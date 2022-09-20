import 'package:bloc/src/bloc.dart';
import 'package:neumorphic_phone_dialer/presentation/bloc/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.dart';

part 'bloc.freezed.dart';

part 'state.dart';

class ContactsBloc extends AppBloc<ContactsEvent, ContactsState> {
  ContactsBloc() : super(const ContactsState(status: BlocStatus.loading)) {
    on<ContactsEvent>((ContactsEvent event, Emitter<ContactsState> emit) {
      // TODO: implement event handler
    });
  }
}
