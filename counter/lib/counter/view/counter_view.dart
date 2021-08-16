import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(builder: (context, count) {
          // Note: Only the Text widget is wrapped in a BlocBuilder because that is the only widget that needs to be rebuilt in response to state changes in the CounterCubit. Avoid unnecessarily wrapping widgets that don't need to be rebuilt when a state changes.
          return Text('$count', style: textTheme.headline2);
        }),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                context.read<CounterBloc>().add(CounterEvent.increment);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: () {
                context.read<CounterBloc>().add(CounterEvent.decrement);
              },
            ),
          ),
        ],
      ),
    );
  }
}
