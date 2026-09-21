import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:skcl_vms/app/utility/capitalize.dart';
import 'package:skcl_vms/data/graphql/services/person/gql/person.graphql.dart';
import 'package:skcl_vms/data/graphql/services/person/person_service.dart';
import 'package:skcl_vms/presentation/profile/service/person_profile_service/person_profile_service.dart';

part 'person_profile_event.dart';
part 'person_profile_state.dart';

class PersonNameDetail {
  final String? fullName;
  final String? nameKeyWord;
  PersonNameDetail(
    this.fullName,
    this.nameKeyWord,
  );
}

class PersonProfileBloc extends Bloc<PersonProfileEvent, PersonProfileState> {
  PersonProfileBloc() : super(PersonProfileInitial()) {
    on<GetPersonProfileEvent>(_onGetPersonPersonProfileEvent);
    on<PersonProfileFirstNameUpdate>(_onPersonProfileFirstNameUpdate);
    on<PersonProfileLastNameUpdate>(_onPersonProfileLastNameUpdate);
    on<PersonProfileUpdate>(_onPersonProfileUpdate);
  }

  Future<void> _onGetPersonPersonProfileEvent(
    GetPersonProfileEvent event,
    Emitter<PersonProfileState> emit,
  ) async {
    try {
      emit(state.copyWith(
        loading: true,
        error: null,
      ));
      final Query$Me$me personData = await PersonService.me();
      final String? firstName = personData.person?.firstName;
      final String? lastName = personData.person?.lastName;
      PersonNameDetail? personNameDetail = updateNameKeyWord(
        firstName,
        lastName,
      );
      String? emailAddress = personData.person?.emailAddress;
      String? phoneNumber = personData.person?.phoneNumber;
      emit(PersonProfileState(
        loading: false,
        error: null,
        firstName: firstName,
        lastName: lastName,
        nameKeyWord: personNameDetail.nameKeyWord,
        fullName: personNameDetail.fullName,
        personId: personData.person?.id,
        emailAddress: emailAddress,
        phoneNumber: phoneNumber,
      ));
    } catch (err) {
      emit(state.copyWith(
        loading: false,
        error: err,
      ));
    }
  }

  Future<void> _onPersonProfileFirstNameUpdate(
    PersonProfileFirstNameUpdate event,
    Emitter<PersonProfileState> emit,
  ) async {
    emit(state.copyWith(
      loading: false,
      error: null,
      firstName: event.firstName,
    ));
  }

  Future<void> _onPersonProfileLastNameUpdate(
    PersonProfileLastNameUpdate event,
    Emitter<PersonProfileState> emit,
  ) async {
    emit(state.copyWith(
      loading: false,
      error: null,
      lastName: event.lastName,
    ));
  }

  Future<void> _onPersonProfileUpdate(
    PersonProfileUpdate event,
    Emitter<PersonProfileState> emit,
  ) async {
    try {
      emit(state.copyWith(
        loading: true,
        error: null,
        isupdated: false,
      ));
      await PersonProfileService.updatePerson(
        event.personId ?? '',
        event.firstName,
        event.lastName,
      );
      PersonNameDetail personNameDetail =
          updateNameKeyWord(event.firstName, event.lastName);
      emit(state.copyWith(
        loading: false,
        error: null,
        firstName: event.firstName,
        lastName: event.lastName,
        nameKeyWord: personNameDetail.nameKeyWord,
        fullName: personNameDetail.fullName,
        isupdated: true,
      ));
    } catch (err) {
      emit(state.copyWith(
        isupdated: false,
        loading: false,
        error: err,
      ));
    }
  }

  static PersonNameDetail updateNameKeyWord(String? name, String? surname) {
    final List<String> nameInfo = [];
    String? nameKeyWord;
    String? fullName = '';
    if (name != null) {
      nameInfo.add(name.toLowerCase());
      if (surname != null &&
          !name.toLowerCase().contains(surname.toLowerCase())) {
        nameInfo.add(surname.toLowerCase());
      }
    }
    if (nameInfo.length > 0) {
      fullName = nameInfo.toSet().join(' ').capitalizeFirstofEach;
      final List<String> nameKeyWords = [];
      if (fullName.length > 0) {
        fullName.split(" ").forEach((name) {
          if (name.isNotEmpty) {
            nameKeyWords.add(name.substring(0, 1));
          }
        });
      }
      nameKeyWord = nameKeyWords.join('');
    }
    return PersonNameDetail(fullName, nameKeyWord);
  }
}
