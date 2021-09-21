import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream/models/product_model.dart';
import 'package:ice_cream/shared/components/constants.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int counter=1;
  @override
  Widget build(BuildContext context) {
    timeDilation=2;
    Size size=MediaQuery.of(context).size;
    return  Container(
      height: size.height,
        width: size.width,
        color: Colors.white,
        child: Stack(
          children:
          [
            Stack(
              children:
              [
                Container(
                  height:size.height*.65 ,
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.product.image,),
                      ),
                  ),
                ),
                GestureDetector(
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },
                  child: Padding(
                    padding: const EdgeInsets.only(left:25,top: 60),
                    child: Container(
                        width:size.width *.1,
                        height:size.height *.044,
                        decoration: BoxDecoration(
                          color: kColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(Icons.arrow_back,color: Colors.white,)
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()
                  {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left:size.width*.82,top: 60),
                    child: Container(
                        width:size.width *.1,
                        height:size.height *.044,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Icon(Icons.more_horiz,color: Colors.black,)
                    ),
                  ),
                ),


              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height*.6),
              child: Stack(
                children: [
                  Container(
                    height:size.height*.45 ,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height*.02,left: 20),
                    child: Text(widget.product.description,style:GoogleFonts.lato(
                      color: kColor,
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height*.1,left: 20),
                    child: Text(widget.product.dummyText,style:GoogleFonts.lato(
                      color: Colors.grey.withOpacity(.8),
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height*.155,left: 20),
                    child: Text('Free delivery',style:GoogleFonts.lato(
                      color: Colors.grey.withOpacity(.8),
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),
                  ),
                  Padding(
                    padding:EdgeInsets.only(top: size.height*.2,left: 20),
                    child: Row(
                      children:
                      [
                        Text(' \$${widget.product.price}',style:GoogleFonts.lato(
                          color: kColor.withOpacity(.8),
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ) ,),
                        SizedBox(width: size.width*.55,),
                        Text('1Kg',style:GoogleFonts.lato(
                          color: kColor.withOpacity(.8),
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ) ,)

                      ],
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(top: size.height*.28,left: 20,right: 25),
                    child:
                    Row(
                      children:
                      [
                        Container(
                          width:size.width *.28,
                          height:size.height *.065,
                          decoration: BoxDecoration(
                            color: sColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child:Row(
                              children:
                              [
                                SizedBox(width: 5,),
                                GestureDetector(
                                    onTap: ()
                                    {
                                      setState(() {
                                        counter++;
                                      });
                                    },
                                    child: Icon(Icons.add,color: Colors.white,size: 27,)),
                                if(counter<10)
                                  SizedBox(width: 10,),
                                Text('$counter',style: GoogleFonts.lato(
                                  color: Colors.white,
                                  textStyle: Theme.of(context).textTheme.headline4,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),),
                                SizedBox(width: 10,),
                                GestureDetector(
                                  onTap: ()
                                  {
                                    setState(() {
                                      if(counter>1)
                                        counter--;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 15,right: 10),
                                    child: Icon(Icons.minimize,color: Colors.white,size: 28,),
                                  ),
                                ),

                              ],
                            )
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width:size.width *.58,
                            height:size.height *.065,
                            decoration: BoxDecoration(
                              color: kColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text('Add to Card',style:GoogleFonts.lato(
                                color: Colors.white,
                                textStyle: Theme.of(context).textTheme.headline4,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                              ) ,),
                            ),
                          ),
                        ),
                      ],
                    ),

                  )


                ],
              ),
            )
          ],
        ),
    );
  }
}
