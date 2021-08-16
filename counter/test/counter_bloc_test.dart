import 'package:bloc_test/bloc_test.dart';
import 'package:counter/counter/bloc/counter_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc(0);
    });

    test('initial state is 0', () {
      expect(counterBloc.state, 0);
    });

    blocTest('emits [1] when CounterEvent.increment is added',
        build: () => counterBloc,
        act: (CounterBloc bloc) => bloc.add(CounterEvent.increment),
        expect: () => [1]);

    blocTest('emits [-1] when CounterEvent.decrement is added',
        build: () => counterBloc,
        act: (CounterBloc bloc) => bloc.add(CounterEvent.decrement),
        expect: () => [-1]);
  });
}
