import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';

part 'contact_name_event.dart';
part 'contact_name_state.dart';

class ContactNameBloc extends Bloc<ContactNameEvent, ContactNameState> {
  ContactNameBloc() : super(ContactNameState()) {
    on<ContactNameRequestedEvent>(_onContactNameRequested);
    on<ContactNameUpdateEvent>(_onContactNameMapUpdate);
    on<ContactNameErrorEvent>(_contactNameErrorEvent);
  }

  Future<void> _onContactNameRequested(
    ContactNameRequestedEvent event,
    Emitter<ContactNameState> emit,
  ) async {
    try {
      emit(state);
    } catch (err) {
      emit(
        state.copyWith(
          error: err,
        ),
      );
    }
  }

  Future<void> _onContactNameMapUpdate(
    ContactNameUpdateEvent event,
    Emitter<ContactNameState> emit,
  ) async {
    try {
      emit(state.copyWith(contactList: event.contactList));
    } catch (err) {
      emit(
        state.copyWith(
          error: err,
        ),
      );
    }
  }

  Future<void> _contactNameErrorEvent(
    ContactNameErrorEvent event,
    Emitter<ContactNameState> emit,
  ) async {
    emit(state.copyWith(
      error: event.err,
    ));
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
