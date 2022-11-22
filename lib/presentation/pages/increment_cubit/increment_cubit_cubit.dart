import 'package:bloc/bloc.dart';

import 'increment_cubit_state.dart';

class IncrementCubitCubit extends Cubit<IncrementCubitState> {
  IncrementCubitCubit() : super(IncrementCubitState().init());

  void increment(){
    emit(state.clone()..counter = state.counter! + 1);
  }

  void decrement(){
    emit(state.clone()..counter = state.counter! - 1);
  }
}
