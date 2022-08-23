import 'package:bluex/cubit/checking_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Screen/Screentwentyone.dart';
import 'Screen/Screeneleven.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CheckingCubit>(
          create: ((context) => CheckingCubit()),
        ),
     
    ],
    child: MaterialApp(
      home: Screeneleven(),
    ),
  ));
}
