import 'package:bloc_examples/counter/bloc/counter_bloc.dart';
import 'package:bloc_examples/counter/screens/counter_view.dart';
import 'package:bloc_examples/theme/cubid/cubid_ex.dart';
import 'package:bloc_examples/theme/theme_bloc.dart';
import 'package:bloc_examples/user/cubit/user_cubit.dart';
import 'package:bloc_examples/user/screen/edit_user_profile.dart';
import 'package:bloc_examples/user/screen/user_profile.dart';
import 'package:bloc_examples/user/screen/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserCubit(),
          child: Container(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
          child: Container(),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
          child: CounterView(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
          child: MyApp(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ThemeCubit, ThemeData>(
      listener: (context, state) {},
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: context.watch<ThemeCubit>().state,
          home: ViewUser(),
        );
      },
    );
  }
}
