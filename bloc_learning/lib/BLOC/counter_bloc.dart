import 'package:bloc/bloc.dart';

class Counterstate {}

// ignore: camel_case_types
class Counter_Bloc extends Bloc<Counterstate, int> {
  Counter_Bloc() : super(0);
}
