import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skcl_vms/app/constant/route_name.dart';
import 'package:skcl_vms/logic/bloc/account/account_form_bloc.dart';
import 'package:skcl_vms/logic/bloc/place/place_form_bloc.dart';
import 'package:skcl_vms/logic/bloc/user_authorization/user_authorization_bloc.dart';
import 'package:skcl_vms/presentation/company_contact/bloc/contact_name_bloc.dart';
import 'package:skcl_vms/presentation/company_contact/company_contact_screen.dart';
import 'package:skcl_vms/presentation/company_detail/company_detail_screen.dart';
import 'package:skcl_vms/presentation/company_detail/model/company_detail.dart';
import 'package:skcl_vms/presentation/company_list/bloc/company_list/company_list_bloc.dart';
import 'package:skcl_vms/presentation/company_list/bloc/company_list_initial_filter/company_list_initial_filter_bloc.dart';
import 'package:skcl_vms/presentation/company_list/bloc/filter/company_list_filter_bloc.dart';
import 'package:skcl_vms/presentation/company_list/company_list_filter_screen.dart';
import 'package:skcl_vms/presentation/company_list/company_list_screen.dart';
import 'package:skcl_vms/presentation/network_error/network_error_screen.dart';
import 'package:skcl_vms/presentation/profile/bloc/person_profile/person_profile_bloc.dart';
import 'package:skcl_vms/presentation/setting_page/bloc/place_setting_name/place_setting_name_bloc.dart';
import 'package:skcl_vms/presentation/setting_page/setting_screen.dart';
import 'package:skcl_vms/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:skcl_vms/presentation/error/error_screen.dart';
import 'package:skcl_vms/presentation/profile/profile_screen.dart';
import 'package:skcl_vms/presentation/sign_in/sign_in_screen.dart';
import 'package:skcl_vms/presentation/sign_in_otp_verification/model/sign_in_otp_verification.dart';
import 'package:skcl_vms/presentation/sign_in_otp_verification/sign_in_otp_verification_screen.dart';
import 'package:skcl_vms/presentation/splash/splash_screen.dart';
import 'package:skcl_vms/presentation/visitor_detail/bloc/visitor_detail/visitor_detail_delete_update_bloc.dart';
import 'package:skcl_vms/presentation/visitor_detail/model/visitor_detail.dart';
import 'package:skcl_vms/presentation/visitor_detail/visitor_detail_screen.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/account/account_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/block/block_name_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/visitor_form/visitor_form_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/bloc/visitor_form_add_update/visitor_form_add_update_bloc.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/model/visitor_entry.dart';
import 'package:skcl_vms/presentation/visitor_entry_form/visitor_entry_form_screen.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/filter/visitor_history_filter_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/visitor_history/visitor_history_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/bloc/visitor_initial_filter/visitor_initial_filter_bloc.dart';
import 'package:skcl_vms/presentation/visitor_history/model/visitor_history.dart';
import 'package:skcl_vms/presentation/visitor_history/visitor_history_screen.dart';
import 'package:skcl_vms/presentation/visitor_history/visitor_history_filter_screen.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/bloc/otp_timer/otp_timer_cubit.dart';
import 'package:skcl_vms/presentation/visitor_phone_number_verification/visitor_phone_number_verification_screen.dart';
import 'package:skcl_vms/presentation/visitor_registry/visitor_registry_screen.dart';

import 'visitor_entry_form/bloc/floor/floor_name_bloc.dart';

class AppRouter {
  static final PersonProfileBloc personProfileBloc = PersonProfileBloc();
  static final UserAuthorizationBloc userAuthorizationBloc =
      UserAuthorizationBloc();
  static final SignInBloc signInBloc = SignInBloc(
    userAuthorizationBloc: userAuthorizationBloc,
  );
  static final ContactNameBloc contactNameBloc = ContactNameBloc();
  static final VisitorHistoryBloc visitorHistoryBloc = VisitorHistoryBloc(
    userAuthorizationBloc: userAuthorizationBloc,
  );
  static final CompanyListBloc companyListBloc = CompanyListBloc(
    userAuthorizationBloc: userAuthorizationBloc,
  );
  static final OTPTimerCubit otpTimerCubit = OTPTimerCubit();
  static final VisitorHistoryFilterBloc visitorHistoryFilterBloc =
      VisitorHistoryFilterBloc(
    visitorHistoryBloc: visitorHistoryBloc,
  );
  static final CompanyListFilterBloc companyListFilterBloc =
      CompanyListFilterBloc(
    companyListBloc: companyListBloc,
  );

  void dispose() {
    signInBloc.close();
    personProfileBloc.close();
    contactNameBloc.close();
    visitorHistoryBloc.close();
    visitorHistoryFilterBloc.close();
    otpTimerCubit.close();
    companyListBloc.close();
    companyListFilterBloc.close();
  }

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.SPLASH_SCREEN:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case RouteName.SIGN_IN_SCREEN:
        return MaterialPageRoute(
          builder: (context) => SignInScreen(),
        );
      case RouteName.SIGN_IN_OTP_VERIFICATION_SCREEN:
        final SignInOTPVerification arguments =
            settings.arguments as SignInOTPVerification;
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: signInBloc,
            child: SignInOTPVerificationScreen(
              arguments: arguments,
            ),
          ),
        );
      case RouteName.VISITOR_REGISTRY_SCREEN:
        return MaterialPageRoute(builder: (context) => VisitorRegistryScreen());
      case RouteName.VISITOR_PHONE_NUMBER_VERIFICATION_SCREEN:
        return MaterialPageRoute(
          builder: (context) => VisitorPhoneNumberVerificationScreen(),
        );
      case RouteName.VISITOR_HISTORY_SCREEN:
        final VisitorHistory arguments = settings.arguments as VisitorHistory;
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: visitorHistoryBloc,
              ),
              BlocProvider.value(
                value: visitorHistoryFilterBloc,
              ),
              BlocProvider.value(
                value: userAuthorizationBloc,
              ),
              BlocProvider(
                create: (context) => VisitorInitialFilterBloc(
                  visitorHistoryFilterBloc: visitorHistoryFilterBloc,
                ),
              ),
            ],
            child: VisitorHistoryScreen(
              arguments: arguments,
            ),
          ),
        );
      case RouteName.VISITOR_HISTORY_FILTER_SCREEN:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: visitorHistoryFilterBloc,
              ),
              BlocProvider.value(
                value: userAuthorizationBloc,
              ),
              BlocProvider(
                create: (context) => PlaceFormBloc(),
              ),
              BlocProvider(
                create: (context) => AccountFormBloc(),
              ),
            ],
            child: VisitorHistoryFilterScreen(),
          ),
        );
      case RouteName.COMPANY_LIST_SCREEN:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: companyListBloc,
              ),
              BlocProvider.value(
                value: companyListFilterBloc,
              ),
              BlocProvider.value(
                value: userAuthorizationBloc,
              ),
              BlocProvider(
                create: (context) => CompanyListInitialFilterBloc(
                  companyListFilterBloc: companyListFilterBloc,
                ),
              ),
            ],
            child: CompanyListScreen(),
          ),
        );
      case RouteName.COMPANY_FILTER_SCREEN:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: companyListFilterBloc,
              ),
              BlocProvider.value(
                value: userAuthorizationBloc,
              ),
              BlocProvider(
                create: (context) => PlaceFormBloc(),
              ),
            ],
            child: CompanyListFilterScreen(),
          ),
        );
      case RouteName.VISITOR_ENTRY_FORM_SCREEN:
        final VisitorEntry arguments = settings.arguments as VisitorEntry;
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => PlaceFormBloc(),
              ),
              BlocProvider(
                create: (context) => AccountNameBloc(),
              ),
              BlocProvider(
                create: (context) => BlockNameBloc(),
              ),
              BlocProvider(
                create: (context) => FloorNameBloc(),
              ),
              BlocProvider.value(
                value: contactNameBloc,
              ),
              BlocProvider.value(
                value: userAuthorizationBloc,
              ),
              BlocProvider(
                create: (context) => VisitorFormBloc(),
              ),
              BlocProvider(
                create: (context) => VisitorFormAddUpdateBloc(
                  visitorHistoryBloc: visitorHistoryBloc,
                ),
              ),
            ],
            child: VisitorEntryFormScreen(
              arguments: arguments,
            ),
          ),
        );
      case RouteName.SETTING_SCREEN:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => PlaceFormBloc(),
              ),
              BlocProvider(
                create: (context) => PlaceSettingNameBloc(),
              ),
            ],
            child: SettingScreen(),
          ),
        );
      case RouteName.ERROR_SCREEN:
        return MaterialPageRoute(
          builder: (context) => ErrorScreen(),
        );
      case RouteName.NETWORK_ERROR_SCREEN:
        return MaterialPageRoute(
          builder: (context) => NetworkErrorScreen(),
        );
      case RouteName.VISITOR_DETAIL_SCREEN:
        final VisitorDetail arguments = settings.arguments as VisitorDetail;
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => VisitorUpdateDeleteBloc(
                  visitorHistoryBloc: visitorHistoryBloc,
                ),
              ),
              BlocProvider.value(
                value: userAuthorizationBloc,
              ),
            ],
            child: VisitorDetailScreen(
              arguments: arguments,
            ),
          ),
        );
      case RouteName.COMPANY_DETAIL_SCREEN:
        final CompanyDetail arguments = settings.arguments as CompanyDetail;
        return MaterialPageRoute(
          builder: (context) => CompanyDetailScreen(
            arguments: arguments,
          ),
        );
      case RouteName.PROFILE_SCREEN:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: personProfileBloc,
            child: ProfileScreen(),
          ),
        );
      case RouteName.COMPANY_CONTACT_SCREEN:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: contactNameBloc,
            child: CompanyContactScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Container(),
        );
    }
  }
}
