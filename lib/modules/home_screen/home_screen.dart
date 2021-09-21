import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream/models/product_model.dart';
import 'package:ice_cream/modules/detailes_screen/detailes_screen.dart';
import 'package:ice_cream/shared/components/constants.dart';
import 'package:ice_cream/shared/styles/icon_broken.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Padding(
                padding: const EdgeInsets.only(top:70),
                child: Text('Hi, Abdo',style:GoogleFonts.lato(
                  color: Colors.black,
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ) ,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Text('What Flavour are you looking for?',style:GoogleFonts.lato(
                  color: Colors.grey,
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ) ,),
              ),
              SizedBox(height:size.height *.03 ,),
              Row(
                children:
                [
                  Container(
                    width:size.width *.74,
                    height:size.height *.058,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255,242,232,232),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(IconBroken.Search,size: 20,color: Colors.grey[500],),
                        ),
                        Text('Search by flavour',style:GoogleFonts.lato(
                          color: Colors.grey[500],
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ) ,),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.mic,color: Colors.grey[500],),
                        )

                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                        width:size.width *.1,
                        height:size.height *.058,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255,242,232,232),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.settings_input_composite_sharp,color: Colors.grey[500],)
                    ),
                  )

                ],
              ),
              SizedBox(height:size.height *.015 ,),
              Text('Top Flavour',style:GoogleFonts.lato(
                color: Colors.black,
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 25,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ) ,),
              SizedBox(height:size.height *.015 ,),
              Stack(
                children:
                [
                  Container(
                    height:size.height*.22 ,
                    width: size.width *.85,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/1.jpeg',),
                        ),
                        borderRadius: BorderRadius.circular(25)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:30 ,left:10 ),
                    child: Text('Vanilla Flavour',style:GoogleFonts.lato(
                      color: Colors.black.withOpacity(.6),
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:65 ,left:10 ),
                    child: Text('Free Delivery',style:GoogleFonts.lato(
                      color: Colors.black.withOpacity(.5),
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),
                  ),
                  Padding (
                    padding: const EdgeInsets.only(top:95 ,left:10 ),
                    child: Text('\$ 18.500 ',style:GoogleFonts.lato(
                      color: kColor.withOpacity(.8),
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:280,top: 10),
                    child: Container(
                        width:size.width *.1,
                        height:size.height *.044,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 226, 201, 201).withOpacity(.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.add_outlined,color: Colors.white,)
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children:
                  [
                    Text('Populer Flavour',style:GoogleFonts.lato(
                      color: Colors.black,
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),
                    SizedBox(width: size.width*.22,),
                    Text('See All',style:GoogleFonts.lato(
                      color: kColor,
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ) ,),



                  ],
                ),
              ),
              GridView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    onTap:() => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ))),
                    context: context,
                    product: products[index],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget ItemCard({final Product product,context,Function onTap})=>GestureDetector(
  onTap: onTap,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:[
      Expanded(
        child: Container(
          height:MediaQuery.of(context).size.height*.3 ,
          width:MediaQuery.of(context).size.width *.42 ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            image: DecorationImage(image: AssetImage(product.image),fit: BoxFit.cover),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10 / 4),
        child: Text(
          // products is out demo list
          product.title,
          style:GoogleFonts.lato(
            color: Colors.black,
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ) ,
        ),
      ),
      Text(
        "\$${product.price}",
        style: TextStyle(fontWeight: FontWeight.bold,color: kColor),
      )
    ],
  ),
);
