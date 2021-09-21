import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream/cubit/cubit.dart';
import 'package:ice_cream/cubit/states.dart';
import 'package:ice_cream/models/product_model.dart';
import '../detailes_screen/detailes_screen.dart';
import 'package:ice_cream/shared/components/constants.dart';
import 'package:ice_cream/shared/styles/icon_broken.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation=1.4;
    return BlocConsumer<IceCubit,States>(
      listener: (context,state){},
      builder: (context,state)
      {
        return DefaultTabController(
          length:4,
          child: Scaffold(
            bottomNavigationBar: JumpingTabBar(
              backgroundColor: kColor,
              onChangeTab: (index)
              {
                IceCubit.get(context).changeBottomNav(index);
              },
              circleGradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 218,175,176),
                  Color.fromARGB(200, 220,175,176),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              items:
              [
                TabItemIcon(
                  buildWidget: (_,color) => Container(
                    child: Icon(Icons.home,color: Colors.white,),
                  ),
                  curveColor: Colors.white,
                ),
                TabItemIcon(
                  buildWidget: (_, color) => Container(
                    child: Icon(Icons.shopping_cart_sharp,color: Colors.white,),
                  ),
                  curveColor: Colors.white,
                ),
                TabItemIcon(
                  buildWidget: (_, color) => Container(
                    child: Icon(Icons.credit_card_outlined,color: Colors.white,),
                  ),
                  curveColor: Colors.white,
                ),
                TabItemIcon(
                  buildWidget: (_, color) => Container(
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                  curveColor: Colors.white,
                ),

              ],
              selectedIndex: IceCubit.get(context).currentIndex,
            ),
            body:IceCubit.get(context).Screens[IceCubit.get(context).currentIndex-1],
          ),
        );
      },
    );
  }

}


