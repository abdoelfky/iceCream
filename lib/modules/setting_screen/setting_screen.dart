import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0,left: 30,right: 10,bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Center(
              child: Text('Settings',style:GoogleFonts.lato(
                color: Colors.black,
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 35,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ) ,),
            ),
          ],
        ),
      ),
    );
  }
}
