import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc() : super(DataInitial());

  @override
  Stream<DataState> mapEventToState(
    DataEvent event,
  ) async* {
    if (event is FetchData) {
      yield DataLoading();
      await Future.delayed(Duration(seconds: 2));
      yield DataSuccess();
    }
  }
}
