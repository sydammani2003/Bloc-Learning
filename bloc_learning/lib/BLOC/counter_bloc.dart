// ignore_for_file: camel_case_types, avoid_print

import 'package:bloc/bloc.dart';

abstract class Counterstate {}

class counter_Increment extends Counterstate {}

class counter_Decrement extends Counterstate {}

class Counter_Bloc extends Bloc<Counterstate, int> {
  Counter_Bloc() : super(0) {
    on<counter_Increment>((event, emit) {
      
      emit(state + 1);
      if (state > 9) {
        print(state);
      }
    });

    on<counter_Decrement>((event, emit) {
      if (state == 0) {
        return;
      }
      emit(state - 1);
    });
  }
}
