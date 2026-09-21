part of 'person_profile_bloc.dart';

class PersonProfileState extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? fullName;
  final String? nameKeyWord;
  final String? personId;
  final String? emailAddress;
  final String? phoneNumber;
  final bool? loading;
  final Object? error;
  final bool? isupdated;

  PersonProfileState({
    this.firstName,
    this.lastName,
    this.fullName,
    this.nameKeyWord,
    this.personId,
    this.emailAddress,
    this.phoneNumber,
    this.loading = false,
    this.error,
    this.isupdated = false,
  });

  PersonProfileState copyWith({
    final String? firstName,
    final String? lastName,
    final String? fullName,
    final String? nameKeyWord,
    final String? personId,
    final String? emailAddress,
    final String? phoneNumber,
    final bool? loading,
    final Object? error,
    final bool? isupdated,
  }) {
    return PersonProfileState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      nameKeyWord: nameKeyWord ?? this.nameKeyWord,
      personId: personId ?? this.personId,
      emailAddress: emailAddress ?? this.emailAddress,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      loading: loading ?? this.loading,
      error: error,
      fullName: fullName ?? this.fullName,
      isupdated: isupdated ?? this.isupdated,
    );
  }

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        fullName,
        nameKeyWord,
        personId,
        emailAddress,
        phoneNumber,
        loading,
        error,
      ];
}

class PersonProfileInitial extends PersonProfileState {}
