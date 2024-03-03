
import 'package:flutter/material.dart';
import 'package:flutter_insta/utils/global.dart';

import '../utils/routes.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Spacer(flex:5),
              Image(image: AssetImage("assets/images/instalogo.png"),
              height:100,
              color: Colors.black,),
              SizedBox(height: 50,),
              SizedBox(
                height:42 ,
                child: TextFormField(
                  cursorColor: Colors.black26,
                  style: TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: 13),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.black26,
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors.black26,
                      )
                    ),
                    hintText: "Phone number, email or username",
                    hintStyle: TextStyle(fontSize: 13, color: Colors.black26)
                  ),
                ),),
              SizedBox(height: 50),
              SizedBox( height:42 ,
                child: TextFormField(
                  cursorColor: Colors.black26,
                  style: TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: 13),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black26,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Colors.black26,
                          )
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 13, color: Colors.black26)
                  ),
                  obscureText: true,
                ),),
              SizedBox(height: 20),
              const SizedBox(height:30),
              const Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: SizedBox()),
                  Text("Forgot Password?",style:TextStyle(color:primaryColor,))
                ],
              ),
              const SizedBox(height:30),
              InkWell(
                onTap: ()=>{
                  Navigator.of(context).pushNamed(MyRoutes.homePageRoute),
                },
                child: Container(
                    alignment: Alignment.center,
                    height:42,
                    width:double.infinity,
                    decoration:const ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      color:primaryColor,
                    ),
                    child:const Text("Log In",style:TextStyle(color: Colors.white, fontSize: 16),)
                ),
              ),
              const Spacer(flex:5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style:TextStyle(color:secondaryColor)),
                  Text(" SignUp",style:TextStyle(color:primaryColor)),
                ],
              ),
              const Spacer(flex:2)
            ],),
          ),
        ),
      ),

    );
  }
}