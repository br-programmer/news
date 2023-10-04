import 'package:flutter_bloc/flutter_bloc.dart';

class ValueCubit<T> extends Cubit<T> {
  ValueCubit({required T value}) : super(value);

  void change(T value) => emit(value);
}
