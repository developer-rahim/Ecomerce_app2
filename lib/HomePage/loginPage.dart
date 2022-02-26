import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_connect_check/Controller/loginController.dart';
import 'package:firebase_connect_check/HomePage/homePage.dart';

import 'package:firebase_connect_check/Model/checkBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  // var isselected = true;
  var isvisible = true;
  var _isvisible = true;

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();

//SIGN IN KA Function

    return Consumer<ViewLogicModel>(
        builder: (context, change, child) => Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                  child: Column(children: [
                Stack(
                  children: [
                    Positioned(
                        // top: ,
                        child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://repairheatingandcooling.com/wp-content/uploads/2018/05/Computer-Room-Ventilation--1080x670.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          color: Colors.black.withOpacity(.30),
                        ),
                        padding: EdgeInsets.only(left: 30, top: 40),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'আপনাকে টিচ-মর্মতে স্বাগতম',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'অবিরত করতে সাইনইন করুন',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    )),
                    Positioned(
                      child: Container(
                        // width: 350,
                        margin: EdgeInsets.only(
                          top: 110,
                        ),
                        child: Card(
                          shape: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          elevation: 20,
                          shadowColor: Colors.black,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: change.isselected
                                    ? Color.fromRGBO(169, 226, 220, 1)
                                    : Color.fromRGBO(170, 190, 206, 1)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        child: TextButton(
                                            onPressed: () {
                                              change.checkcolor2();
                                            },
                                            child: Text('সাইনইন',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontFamily: 'rrr',
                                                    color: change.isselected
                                                        ? Colors.black
                                                        : Colors.black38)))),
                                    Container(
                                        child: TextButton(
                                            onPressed: () {
                                              change.checkcolor();
                                            },
                                            child: Text('লগইন',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontFamily: 'rrr',
                                                    color: change.isselected
                                                        ? Colors.black38
                                                        : Colors.black))))
                                  ],
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Form(
                                  key: formKey,
                                  child: Column(children: [
                                    change.isselected
                                        ? SingUp(
                                            // controller: userController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please Enter Your Name';
                                              } else if (value.length <= 2) {
                                                return 'minimam 3 character';
                                              } else if (!RegExp(
                                                      r'^[a-z A-Z]+$')
                                                  .hasMatch(value)) {
                                                return 'Invilid EXpression';
                                              }
                                              return null;
                                            },
                                            showtex: false,
                                            confirm: false,
                                            obsecuretext: false,
                                            obsecurecharecter: 'a',
                                            hintext: 'Enter Your Name',
                                            label: 'Name',
                                            icon: Icons.person)
                                        : Container(),
                                    SingUp(
                                        // controller: emailController,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please Enter Your Email';
                                          }
                                          // else if (!RegExp(r'^[\w\.]+@')
                                          //     .hasMatch(value)) {
                                          //   return ' Invalid Email1';
                                          // } else if (!RegExp(
                                          //         r'^[\w\.]+@([\g])')
                                          //     .hasMatch(value)) {
                                          //   return '"Invalid Email"';
                                          // } else if (!RegExp(
                                          //         r'^[\w\.]+@([\w]+\.)')
                                          //     .hasMatch(value)) {
                                          //   return '"."  Is Not In Proper Place';
                                          // } else if (!RegExp(
                                          //         r'^[\w\.]+@([\w]+\.)+[\w]{2,4}')
                                          //     .hasMatch(value)) {
                                          //   return 'Atlest character 2 after " . "';
                                          // }
                                          return null;
                                        },
                                        showtex: false,
                                        confirm: false,
                                        obsecuretext: false,
                                        obsecurecharecter: 'a',
                                        hintext: 'Enter Your Email',
                                        label: 'Email',
                                        icon: Icons.email),
                                    change.isselected
                                        ? SingUp(
                                            // controller: mobileController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter Phone Number';
                                              } else if (!RegExp(
                                                      r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                                                  .hasMatch(value)) {
                                                return ' Invalid Mobile Number';
                                              } else if (value.length <= 10) {
                                                return 'Must Enter 11 Dgits';
                                              }
                                              return null;
                                            },
                                            showtex: false,
                                            confirm: false,
                                            obsecuretext: false,
                                            obsecurecharecter: 1.toString(),
                                            hintext: 'Enter Your Mobile Number',
                                            label: 'Mobile Number',
                                            icon: Icons.phone)
                                        : Container(),
                                    SingUp(
                                        controller: passwordController,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please Enter Password';
                                          }

                                          //UpperCase,lowerCase,numerical Symbol,Number
                                          // else if (!RegExp(
                                          //         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                          //     .hasMatch(value)) {
                                          //   return ' Must be upper & lower case & symbol & number';
                                          // }
                                          else if (value.length <= 7) {
                                            return 'Must Enter 8 Dgits';
                                          }
                                          return null;
                                        },
                                        obsecuretext: isvisible,
                                        showtex: true,
                                        confirm: false,
                                        obsecurecharecter: '*',
                                        hintext: 'Enter Your Password',
                                        label: 'Password',
                                        icon: Icons.lock),
                                    change.isselected
                                        ? SingUp(
                                            controller:
                                                confirmPasswordController,
                                            validator: (val) {
                                              if (val!.isEmpty) return 'Empty';
                                              if (val !=
                                                  passwordController.text)
                                                return 'Not Match';
                                              return null;
                                            },
                                            showtex: false,
                                            confirm: true,
                                            obsecuretext: _isvisible,
                                            obsecurecharecter: '*',
                                            hintext: 'Confirm Your Password',
                                            label: ' Confirm Password',
                                            icon: Icons.lock)
                                        : Container(),
                                    Container(
                                        child: Column(
                                      children: [
                                        change.isselected
                                            ? Container()
                                            : checkbox(
                                                text1: 'Remember Me',
                                              ),
                                        Container(
                                          padding: EdgeInsets.only(left: 120),
                                          child: change.isselected
                                              ? Container()
                                              : Text(
                                                  'Forgot Password ?',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 16,
                                                      fontFamily: 'rrr'),
                                                ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    )),
                                    SignInButton(Buttons.Google, onPressed: () {
                                      change.googleLogin();
                                    })
                                    // ElevatedButton.icon(
                                    //     onPressed: () {
                                    //       change.googleLogin();
                                    //     },
                                    //     icon: Icon(Icons.facebook),
                                    //     label: Text('singIn GooGle'))
                                  ]),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Card(
                    elevation: 20,
                    shadowColor: Colors.black,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(35)),
                    child: Container(
                      // height: 45,
                      padding: EdgeInsets.all(10),
                      width: 250,
                      decoration: BoxDecoration(
                          color: change.isselected
                              ? Color.fromRGBO(163, 196, 212, 1)
                              : Color.fromRGBO(194, 199, 226, 1),
                          borderRadius: BorderRadius.circular(35)),

                      child: GestureDetector(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              // Navigator.pushReplacementNamed(
                              //     context, '/dashborh');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Bottomnav()));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }
                          },
                          child: change.isselected
                              ? Center(
                                  child: Text(
                                  'সাইনইন',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: 'rrr',
                                  ),
                                ))
                              : Center(
                                  child: Text(
                                    'লগইন',
                                    style: TextStyle(
                                        fontSize: 25, fontFamily: 'rrr'),
                                  ),
                                )),
                    ),
                  ),
                ),
              ])),
            )));
  }

  SingUp(
      {hintext,
      label,
      icon,
      obsecuretext,
      confirm = true,
      obsecurecharecter,
      validator,
      showtex,
      controller}) {
    return TextFormField(
      controller: controller,
      obscureText: obsecuretext,
      obscuringCharacter: obsecurecharecter,
      validator: validator,
      decoration: InputDecoration(
        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        hintText: hintext,
        label: Text(label),
        prefixIcon: Icon(icon),
        suffixIcon: showtex
            ? InkWell(
                onTap: password,
                child:
                    Icon(isvisible ? Icons.visibility : Icons.visibility_off))
            : confirm
                ? InkWell(
                    onTap: compassword,
                    child: Icon(
                        _isvisible ? Icons.visibility : Icons.visibility_off))
                : null,
      ),
    );
  }

  void password() {
    setState(() {
      isvisible = !isvisible;
    });
  }

  void compassword() {
    setState(() {
      _isvisible = !_isvisible;
    });
  }
}
