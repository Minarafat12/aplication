// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: 
                Column(
                  children: [
                    SizedBox(
                    height: 30,
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    Image.asset(
                      "assets/images/welcome.png"
                    ),

                      SizedBox(
                      height: 60,
                    ),

                    // login button
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.amber),
                              padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 75 ,vertical: 15)),
                              ),      
                      onPressed: () {
                      Navigator.pushNamed(context, "/login");
                                     },
                      child: Text("Login"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  
                    // login button
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: 
                        WidgetStatePropertyAll(Colors.amber),
                        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 70 ,vertical: 15)),
                        ),
                        onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                      },
                      child: Text("Signup"),
                      ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset("assets/images/main_bottom.png", width: 111),
              ),
              Positioned(
                top: 0,
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 120,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
