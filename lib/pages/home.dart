// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(221, 22, 130, 180),
                ),
                currentAccountPicture: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/mina copy1.jpg")),
                accountName: Text("Mina Rafat"),
                accountEmail: Text("Mina Rafat@gmail.com"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.add_shopping_cart),
                title: Text("My product"),
              ),
              ListTile(
                leading: Icon(Icons.help_center),
                title: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/welcome");
                    },
                    child: Text("About")),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Logout"),
              ),
              SizedBox(
                height: 290,
              ),
              Text("Developed by Mina Rafat @2024",
                  style: TextStyle(fontWeight: FontWeight.w900)),
            ],
          ),
        ),
        appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Stack(children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_shopping_cart),
                      ),
                      Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 18, 31, 212),
                              shape: BoxShape.circle),
                          child: Text(
                            "8",
                            style: TextStyle(color: Colors.white),
                          )),
                    ]),
                    Text(
                      "\$13",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
            title: Text(
              "Home ",
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            backgroundColor: Color.fromARGB(255, 236, 221, 8),
            ),


          body:  GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 33),
            itemBuilder: (BuildContext context, int index) 
            {
            return Container( );
            }),
GridTile(
 child: GestureDetector(
 onTap: () { },
  child: Image.asset("img PATH"),
   ),
   
 footer: GridTileBar(
    trailing: IconButton(
      color: Color.fromARGB(255, 62, 94, 70),
      onPressed: (){},
      icon: Icon(Icons.add)),

 leading: Text("\$12.99"),

 title: Text("f"),
   ), 
    ),


      ),
    );
  }
}
