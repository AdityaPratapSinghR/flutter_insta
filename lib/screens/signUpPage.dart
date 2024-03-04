import 'package:flutter/material.dart';

import '../utils/global.dart';
import '../utils/routes.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({super.key});

  @override
  State<signUpPage> createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(flex: 5),
                Image(
                  image: AssetImage("assets/images/instalogo.png"),
                  height: 100,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Sign up to see photos and videos from your friends.",style: TextStyle(color: secondaryColor,fontSize: 16),textAlign: TextAlign.center,),
                SizedBox(height: 30,),
                SizedBox(
                  height: 42,
                  child: TextFormField(
                    cursorColor: Colors.black26,
                    style: TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 13),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black26,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black26,
                            )),
                        hintText: "Email",
                        hintStyle:
                            TextStyle(fontSize: 13, color: Colors.black26)),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 42,
                  child: TextFormField(
                    cursorColor: Colors.black26,
                    style: TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 1, horizontal: 13),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black26,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black26,
                            )),
                        hintText: "Full Name",
                        hintStyle:
                        TextStyle(fontSize: 13, color: Colors.black26)),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 42,
                  child: TextFormField(
                    cursorColor: Colors.black26,
                    style: TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 1, horizontal: 13),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black26,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black26,
                            )),
                        hintText: "Username",
                        hintStyle:
                        TextStyle(fontSize: 13, color: Colors.black26)),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 42,
                  child: TextFormField(
                    cursorColor: Colors.black26,
                    style: TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 13),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black26,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.black26,
                            )),
                        hintText: "Password",
                        hintStyle:
                            TextStyle(fontSize: 13, color: Colors.black26)),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 10),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () => {
                    Navigator.of(context).pushNamed(MyRoutes.loginPageRoute),
                  },
                  child: Container(
                      alignment: Alignment.center,
                      height: 42,
                      width: double.infinity,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        color: primaryColor,
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                ),
                const Spacer(flex: 5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("By signing up, you agree to our",
                        style: TextStyle(color: secondaryColor)),
                    InkWell(
                      onTap: () => {
                        Navigator.of(context)
                            .pushNamed(MyRoutes.signUpPageRoute),
                      },
                      child: Text("Terms & Privacy Policy",
                          style: TextStyle(color: secondaryColor,fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const Spacer(flex: 2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
