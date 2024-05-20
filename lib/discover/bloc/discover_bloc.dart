import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'discover_event.dart';
import 'discover_state.dart';

class DiscoverBloc extends Bloc<LoginEvent, LoginState> {
  DiscoverBloc() : super(const LoginState(listOptions: [])) {
    on<InitialEvent>(_onInitialEvent);
    on<ChangeValueCheckBoxEvent>(_onChangeValueCheckBoxEvent);
  }

  Future<void> _onInitialEvent(
      InitialEvent event, Emitter<LoginState> emit) async {
    print('Goi vao day');

    final listOptions = ['All', 'Men', 'Women', 'Kids'];

    emit(state.copyWith(
      listOptions: listOptions,
    ));
  }

  Future<void> _onChangeValueCheckBoxEvent(
      ChangeValueCheckBoxEvent event, Emitter<LoginState> emit) async {
    List<String> listOptions = List.from(state.listOptions);

   // listOptions[event.index] = event.value;

    emit(state.copyWith(
      listOptions: listOptions,
    ));
  }
}
