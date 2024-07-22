// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset("assets/images/login_bottom.png"),
                  width: 170),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset("assets/images/main_top.png"),
                  width: 130),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Signup",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      "assets/images/signup-removebg-preview.png",
                      width: 190,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      height: 50,
                      width: 250,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.person),
                            hintText: " Email : ",
                            hintStyle: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      height: 50,
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.lock),
                            hintText: " Password : ",
                            hintStyle: TextStyle(
                              fontSize: 20,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 238, 20, 172)),
                        padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(horizontal: 75, vertical: 15)),
                      ),
                      onPressed: () {},
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("Already have an account ?"),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Text(
                            " LOGIN",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          )
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
