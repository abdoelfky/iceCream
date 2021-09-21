import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream/modules/register/register_screen.dart';
import 'package:ice_cream/shared/components/components.dart';

class Get_Started extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:Stack(
        alignment: AlignmentDirectional.topCenter,
        children: 
        [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/auth2.png',),
                fit: BoxFit.cover,
                  )
            ),
            child: BackdropFilter(filter:
            ImageFilter.blur(
                sigmaX:3.5,
                sigmaY:2.5,
            ),
            child: Container(
              color: Colors.white.withOpacity(0),
            ),)
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text('Tasty Icecream',style:GoogleFonts.lato(
              color: Colors.white,
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 48,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:700),
            child: InkWell(
              onTap: ()
              {
                navigateAndEnd(context,Register_Screen());
              },
              child: Container(
                width:size.width*.6 ,
                height:size.height*.06 ,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Center(child:
                Text('Get Started',style:GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.button,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF014963).withOpacity(.8),
                  fontStyle: FontStyle.italic,
                ),)),
              ),
            ),
          )

        ],
      )
    );
  }
}
