part of 'contact_name_bloc.dart';

class ContactNameState {
  final List<Query$Accounts$accounts$values$places$blocks$floors$persons?>?
      contactList;
  final String? companyName;
  final bool? loading;
  final Object? error;

  ContactNameState({
    this.contactList,
    this.companyName,
    this.loading,
    this.error,
  });

  ContactNameState copyWith({
    List<Query$Accounts$accounts$values$places$blocks$floors$persons?>?
        contactList,
    String? companyName,
    bool? loading,
    Object? error,
  }) {
    return ContactNameState(
      contactList: contactList ?? this.contactList,
      companyName: companyName ?? this.companyName,
      loading: loading ?? this.loading,
      error: error ?? null,
    );
  }
}
