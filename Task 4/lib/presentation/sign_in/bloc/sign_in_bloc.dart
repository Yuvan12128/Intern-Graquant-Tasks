import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/app/model/app_config.dart';
import 'package:skcl_vms/data/constant/api_constant.dart';
import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/graphql/services/person/gql/person.graphql.dart';
import 'package:skcl_vms/data/graphql/services/person/person_service.dart';
import 'package:skcl_vms/data/graphql/utility/sign_in.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final UserAuthorizationBloc userAuthorizationBloc;
  SignInBloc({required this.userAuthorizationBloc}) : super(SignInState()) {
    on<OnOtpSignInEvent>(_otpSignin);
  }

  void _otpSignin(
    OnOtpSignInEvent event,
    Emitter<SignInState> emit,
  ) async {
    try {
      final String? idToken = event.userIdToken;
      AppConfig appConfig = GetIt.instance<AppConfig>();
      if (idToken != null) {
        final isSignedIn = await SignIn.signIn(
          idToken,
          appConfig.appName,
          FieldConstant.PHONE,
        );
        if (isSignedIn) {
          final Query$Me$me meInfo = await PersonService.me();
          await SecureStorage().writeSecureData(
              ApiConstant.AUTH_INFO, 'mock-auth-info');
          await SecureStorage().writeSecureData(
              FieldConstant.PERSON_ID, meInfo.person?.id ?? '');
          final String? givenName = meInfo.person?.firstName;
          final String? surname = meInfo.person?.lastName;
          final Enum$LifeState? lifeState = meInfo.account?.lifeState;
          final String? accountId = meInfo.account?.id;
          final String? roleType = meInfo.person?.roleType;
          if (roleType != null && accountId != null) {
            userAuthorizationBloc.add(
              OnUserLogin(
                roleType: roleType,
                accountId: accountId,
              ),
            );
            emit(SignInState(
              isAuthCompleted: true,
              phoneNo: meInfo.credential?.uId,
              personId: meInfo.person?.id,
              givenName: givenName,
              surname: surname,
              lifeState: lifeState,
              error: null,
            ));
          } else {
            throw new Exception('User roleType or accountId will be empty');
          }
        }
      } else {
        throw new Exception('Id Token is empty');
      }
    } catch (err) {
      emit(SignInState(error: err));
    }
  }
}
