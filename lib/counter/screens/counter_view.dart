import 'package:bloc_examples/counter/bloc/counter_bloc.dart';
import 'package:bloc_examples/theme/cubid/cubid_ex.dart';
import 'package:bloc_examples/theme/theme_bloc.dart';
import 'package:bloc_examples/theme/theme_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_event.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocConsumer<CounterBloc, int>(
              listener: (context, state) {},
              builder: (context, state) {
                return Text(
                  "${state}",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncrement());
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterDecrement());
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              //context.read<ThemeBloc>().add(ChangeTheme());
              context.read<ThemeCubit>().toggletheme();
            },
            child: Icon(Icons.brightness_4),
          ),
        ],
      ),
    );
  }
}
