import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream/models/product_model.dart';
import 'package:ice_cream/shared/components/constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0,left: 15,right: 10),
          child: Column(
              children:
            [
              Row(
                children: [
                  Text('My Cart',style:GoogleFonts.lato(
                    color: Colors.black,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ) ,),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: sColor,
                      borderRadius: BorderRadius.circular(8)

                    ),
                    child: IconButton(onPressed: (){},
                        padding: EdgeInsets.only(bottom: 0),
                        icon: Icon(Icons.add,color: Colors.white,size: 20,)
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Add items',style:GoogleFonts.lato(
                    color: sColor,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ) ,),


                ],
              ),
              ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount:4,
                itemBuilder:(context,index)=>buildCard(context,index),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Total Price',style:GoogleFonts.lato(
                    color: Colors.black,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ) ,),
                  SizedBox(width: size.width*.4,),
                  Text('\$45.000',style:GoogleFonts.lato(
                    color: sColor,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                  ) ,),

                ],
              ),
              SizedBox(height: 30,),
              Container(
                height: size.height*.07,
                width: size.width*.8,
                decoration: BoxDecoration(
                    color: kColor,
                    borderRadius: BorderRadius.circular(8)

                ),
                child:
                Center(
                  child: Text('Check out',style:GoogleFonts.lato(
                    color: Colors.white,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ) ,),
                ),

              ),



            ],
          ),
        ),
      ),
    );
  }


}
Widget buildCard(context,index)
{
  Size size =MediaQuery.of(context).size;
  return Card(
    margin: EdgeInsets.only(bottom: 10),
    elevation: 5.0,
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0,left:8 ,right:8 ),
      child: Column(

        children:
        [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Container(
                  height: size.height * .105,
                  width: size.width * .22,
                  child: Image(
                    image: AssetImage(products[index].image), fit: BoxFit.cover,)),
              SizedBox(width: size.width * .05,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(products[index].title, style: GoogleFonts.lato(
                    color: Colors.black.withOpacity(.7),
                    textStyle: Theme
                        .of(context)
                        .textTheme
                        .headline4,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),),
                  SizedBox(height: size.height * .008,),
                  Text(products[index].price.toString(), style: GoogleFonts.lato(
                    color: Colors.grey[500],
                    textStyle: Theme
                        .of(context)
                        .textTheme
                        .headline4,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),),
                  SizedBox(height: size.height * .009,),
                  Text('Free Delivery', style: GoogleFonts.lato(
                    color: Colors.grey[500],
                    textStyle: Theme
                        .of(context)
                        .textTheme
                        .headline4,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),),

                ],
              ),
              Spacer(),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.6),
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),

                ),
                child: IconButton(onPressed: () {},
                    padding: EdgeInsets.only(bottom: 0),
                    icon: Icon(MdiIcons.delete,
                      color: Colors.orange[400].withOpacity(.7), size: 28,)
                ),
              ),


            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * .6),
            child: Row(
              children:
              [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.grey[400].withOpacity(.7),
                      borderRadius: BorderRadius.circular(2)

                  ),
                  child: IconButton(
                      onPressed: (){},
                      padding: EdgeInsets.only(bottom: 0),
                      icon: Icon(MdiIcons.minus, color: Colors.white, size: 20,)
                  ),
                ),
                Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.2),
                        borderRadius: BorderRadius.circular(2)

                    ),
                    child: Center(child:
                    Text('$index', style: GoogleFonts.lato(
                      color: Colors.black.withOpacity(.65),
                      textStyle: Theme
                          .of(context)
                          .textTheme
                          .headline4,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                    ),),
                    )
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: sColor,
                      borderRadius: BorderRadius.circular(2)

                  ),
                  child: IconButton(
                      onPressed: (){},
                      padding: EdgeInsets.only(bottom: 0),
                      icon: Icon(Icons.add, color: Colors.white, size: 20,)
                  ),
                ),

              ],),
          ),
          SizedBox(height: 10,)


        ],),
    ),
  );
}
