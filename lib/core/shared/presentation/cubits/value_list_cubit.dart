import 'package:flutter_bloc/flutter_bloc.dart';

class ValueListCubit<T> extends Cubit<List<T>> {
  ValueListCubit(super.init);

  void add(T value) => emit([...state, value]);

  void remove(T value) => emit([...state..remove(value)]);

  void reset() => emit([]);
}
