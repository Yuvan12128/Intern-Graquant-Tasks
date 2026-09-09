part of 'account_name_bloc.dart';

@immutable
abstract class AccountNameEvent {}

class AccountNameRequestedEvent extends AccountNameEvent {
  final String? buildingId;
  final String? buildingName;
  final String? accountId;
  AccountNameRequestedEvent({
    this.buildingId,
    this.accountId,
    this.buildingName,
  });
}
