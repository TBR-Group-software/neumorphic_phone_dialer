import 'package:bloc/src/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neumorphic_phone_dialer/domain/entity/contact.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/contact/load.dart';
import 'package:neumorphic_phone_dialer/domain/usecase/contact/search.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/base.dart';

part 'bloc.freezed.dart';

part 'event.dart';

part 'state.dart';

class ContactsBloc extends AppBloc<ContactsEvent, ContactsState> {
  ContactsBloc(
    this._loadContactsUseCase,
    this._searchContactsUseCase,
  ) : super(
          const ContactsState(
            status: BlocStatus.loading,
            contacts: <Contact>[],
          ),
        ) {
    on<ContactsEvent>((ContactsEvent event, Emitter<ContactsState> emit) async {
      try {
        await event.when<Future<void>>(
            loadContacts: () => _loadContacts(
                  emit: emit,
                ),
            queryContacts: (String query) => _queryContacts(
                  emit: emit,
                  query: query,
                ));
      } on Object catch (error) {
        emit(_errorState(error));
      }
    });
  }

  final LoadContactsUseCase _loadContactsUseCase;
  final SearchContactsUseCase _searchContactsUseCase;

  Future<void> _loadContacts({required Emitter<ContactsState> emit}) async {
    await _loadContactsUseCase().then((List<Contact> contacts) {
      emit(
        state.copyWith(
          status: BlocStatus.loaded,
          contacts: contacts,
        ),
      );
    });
  }

  Future<void> _queryContacts({
    required Emitter<ContactsState> emit,
    required String query,
  }) async {
    await _searchContactsUseCase(phoneNumber: query)
        .then((List<Contact> contacts) {
      emit(
        state.copyWith(
          status: BlocStatus.loaded,
          contacts: contacts,
        ),
      );
    });
  }

  ContactsState _loadingState() => state.copyWith(status: BlocStatus.loading);

  ContactsState _errorState(Object error) => state.copyWith(
        status: BlocStatus.error,
        error: error,
      );
}
