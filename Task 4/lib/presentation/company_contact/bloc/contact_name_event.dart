part of 'contact_name_bloc.dart';

@immutable
abstract class ContactNameEvent {}

class ContactNameRequestedEvent extends ContactNameEvent {
  ContactNameRequestedEvent();
}

class ContactNameUpdateEvent extends ContactNameEvent {
  final List<Query$Accounts$accounts$values$places$blocks$floors$persons?>?
      contactList;
  final String? companyName;
  ContactNameUpdateEvent({
    required this.contactList,
    this.companyName,
  });
}

class ContactNameErrorEvent extends ContactNameEvent {
  final Object? err;
  ContactNameErrorEvent({this.err});
}
