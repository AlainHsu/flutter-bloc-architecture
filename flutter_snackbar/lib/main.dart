import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/data_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DataBloc(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataBloc = BlocProvider.of<DataBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: BlocListener<DataBloc, DataState>(
        listener: (context, state) {
          if (state is DataSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text('Success'),
              ),
            );
          }
        },
        child: BlocBuilder<DataBloc, DataState>(builder: (context, state) {
          if (state is DataLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is DataSuccess) {
            return Center(
              child: Text('Success'),
            );
          } else {
            return Center(
              child: Text('Press the button'),
            );
          }
        }),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              dataBloc.add(FetchData());
            },
            child: Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}
