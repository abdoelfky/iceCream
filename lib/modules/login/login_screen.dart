import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream/modules/home_layout/home_layout.dart';
import 'package:ice_cream/modules/register/register_screen.dart';
import 'package:ice_cream/shared/components/components.dart';

class Login_Screen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var nameController = TextEditingController();
  var passwordConfirmController=TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    timeDilation=3.0;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
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
                  sigmaX:5,
                  sigmaY:10.5,
                ),
                  child: Container(
                    color: Color(0xFF31AAE2).withOpacity(.3),
                  ),)
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100,left: 10),
              child: Container(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Log in',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Hero(
                            tag: 'TextTag',
                            child: Text('Enter your data to continue',
                                style:GoogleFonts.lato(
                                  color: Colors.white,
                                  textStyle: Theme.of(context).textTheme.headline4,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                )),
                          ),
                          SizedBox(
                            height: size.height*.07,
                          ),
                          defaultFormFeild(
                              context: context,
                              validatorText: 'please enter your Email Address',
                              controller: emailController,
                              inputType: TextInputType.emailAddress,
                              prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                              labelText: 'Email Address'),
                          SizedBox(
                            height: 25.0,
                          ),
                          defaultFormFeild(
                            context: context,
                            validatorText: 'please enter your Password',
                            controller: passwordController,
                            inputType: TextInputType.visiblePassword,
                            prefixIcon: Icon(Icons.lock_outline,
                              color: Colors.white,),
                            labelText: 'Password',
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Center(
                            child: InkWell(
                              onTap: ()
                              {
                                navigateAndEnd(context, HomeLayout());
                                timeDilation=1.8;
                              },
                              child: Hero(
                                tag: 'ButtonTag',
                                child: Container(
                                  width:size.width*.6 ,
                                  height:size.height*.06 ,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.5),
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Center(child:
                                  Text('Submit',style:GoogleFonts.lato(
                                    textStyle: Theme.of(context).textTheme.button,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF014963).withOpacity(.7),
                                    fontStyle: FontStyle.italic,
                                  ),)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: GoogleFonts.lato(
                                  color: Colors.white.withOpacity(.7),
                                  textStyle: Theme.of(context).textTheme.headline4,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                ),

                              ),
                              TextButton(
                                onPressed: () {
                                  navigateAndEnd(context, Register_Screen());
                                },
                                child: Text(
                                  'Sign Up',
                                  style: GoogleFonts.lato(
                                    color: Colors.white,
                                    textStyle: Theme.of(context).textTheme.headline4,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
