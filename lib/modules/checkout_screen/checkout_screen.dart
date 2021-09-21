import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream/shared/components/components.dart';
import 'package:ice_cream/shared/components/constants.dart';
import 'package:ice_cream/shared/styles/icon_broken.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool isBool=false;
  var textController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0,left: 30,right: 10,bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Center(
                child: Text('Checkout',style:GoogleFonts.lato(
                  color: Colors.black,
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ) ,),
              ),
              SizedBox(height: size.height*.1,),
              Text('Deliver To',style:GoogleFonts.lato(
                color: Colors.grey,
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ) ,),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Joshua Oladele',style:GoogleFonts.lato(
                    color: Colors.black.withOpacity(.7),
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ) ,),
                  Spacer(),
                  Radio(
                      value: isBool,
                      groupValue:isBool ,
                      onChanged: (value) {
                        setState(() {
                          !isBool;
                        });
                      },
                    fillColor:MaterialStateProperty.all(kColor) ,
                    ),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width:size.width *.74,
                height:size.height *.058,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.12),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.notes,size: 20,color: Colors.grey[500],),
                    ),
                    SizedBox(width: 20,),
                    Text('Add a note at delivery address',style:GoogleFonts.lato(
                      color: Colors.grey[500],
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),

                  ],
                ),
              ),
              SizedBox(height: size.height*.1,),
              Text('Payment',style:GoogleFonts.lato(
                color: Colors.black,
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ) ,),
              SizedBox(height: 20,),
              Row(children:
              [
                Text('Item Total',style:GoogleFonts.lato(
                  color: Colors.black.withOpacity(.7),
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ) ,),
                Spacer(),
                Text('\$45.00',style:GoogleFonts.lato(
                  color: Colors.black.withOpacity(.7),
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ) ,),


              ],),
              SizedBox(height: 20,),
              Row(children:
              [
                Text('Delivery tee',style:GoogleFonts.lato(
                  color: Colors.black.withOpacity(.7),
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ) ,),
                Spacer(),
                Text('\$ 0',style:GoogleFonts.lato(
                  color: Colors.black.withOpacity(.7),
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ) ,),


              ],),
              SizedBox(height: 10,),
              myDivider(),
              Row(children:
              [
                Text('To Pay',style:GoogleFonts.lato(
                  color: Colors.black.withOpacity(.7),
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ) ,),
                Spacer(),
                Text('\$45.00',style:GoogleFonts.lato(
                  color: Colors.black.withOpacity(.7),
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ) ,),


              ],),









            ],
          ),
        ),
      ),
    );
  }
}
