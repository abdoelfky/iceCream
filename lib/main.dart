import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ice_cream/cubit/cubit.dart';
import 'package:ice_cream/modules/get_started/get_started_screen.dart';
import 'package:ice_cream/modules/login/login_screen.dart';
import 'package:ice_cream/modules/mycart_screen/mycart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>IceCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ice Cream Flutter',
          home: Get_Started()
      ),
    );
  }
}



