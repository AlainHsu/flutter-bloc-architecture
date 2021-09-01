import 'package:counter/app.dart';
import 'package:counter/counter_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(CounterApp());
}
