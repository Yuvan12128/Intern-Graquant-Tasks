part of 'account_form_bloc.dart';

@immutable
abstract class AccountFormEvent {}

class GetAccountFormEvent extends AccountFormEvent {
  final FormGroup formGroup;
  GetAccountFormEvent({
    required this.formGroup,
  });
}
