import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ice_cream/cubit/states.dart';
import 'package:ice_cream/modules/checkout_screen/checkout_screen.dart';
import 'package:ice_cream/modules/home_screen/home_screen.dart';
import 'package:ice_cream/modules/mycart_screen/mycart_screen.dart';
import 'package:ice_cream/modules/setting_screen/setting_screen.dart';


class IceCubit extends Cubit<States> {
  IceCubit() : super(InitialState());

  static IceCubit get(context) => BlocProvider.of(context);


  List<Widget> Screens =
  [
    HomeScreen(),
    MyCartScreen(),
    CheckOutScreen(),
    SettingScreen()
  ];

  int currentIndex = 1;

  void changeBottomNav(int index) {
      currentIndex = index;
    emit(ChangeBottomNavState());
  }

}