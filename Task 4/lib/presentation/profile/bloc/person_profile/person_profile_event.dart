part of 'person_profile_bloc.dart';

class PersonProfileEvent extends Equatable {
  const PersonProfileEvent();

  @override
  List<Object?> get props => [];
}

class GetPersonProfileEvent extends PersonProfileEvent {}

class PersonProfileFirstNameUpdate extends PersonProfileEvent {
  final String? firstName;
  PersonProfileFirstNameUpdate(this.firstName);

  @override
  List<Object?> get props => [firstName];
}

class PersonProfileLastNameUpdate extends PersonProfileEvent {
  final String? lastName;
  PersonProfileLastNameUpdate(this.lastName);

  @override
  List<Object?> get props => [lastName];
}

class PersonProfileUpdate extends PersonProfileEvent {
  final String? personId;
  final String? firstName;
  final String? lastName;
  PersonProfileUpdate({
    this.personId,
    this.firstName,
    this.lastName,
  });

  @override
  List<Object?> get props => [personId, firstName, lastName];
}
