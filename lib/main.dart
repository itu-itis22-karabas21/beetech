// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final pageview1controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Home", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, fontFamily: 'Inter')),
            centerTitle: false,
            backgroundColor: Colors.white,
            shadowColor: Color.fromARGB(255, 172, 172, 172),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_bag_outlined),
                onPressed: () {},
              )
            ],
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ),

          bottomNavigationBar: NavigationBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.grey,
            indicatorColor: Color.fromARGB(255, 199, 199, 199),
            destinations: const [
              NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.category),
                icon: Icon(Icons.category_outlined),
                label: 'Categories',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.lock_clock),
                icon: Icon(Icons.lock_clock),
                label: 'Orders',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.person),
                icon: Icon(Icons.person_2_outlined),
                label: 'Profile',
              ),
            ],
          ),
          
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                    child: Container(
                  margin: EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 20.0, bottom: 10),
                  child: SearchBar(
                    shape: MaterialStateProperty.all(
                        const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    leading: Icon(Icons.search),
                    elevation: MaterialStateProperty.all(0.0),
                    side: MaterialStateProperty.all(const BorderSide(
                        color: Color.fromARGB(255, 178, 178, 178))),
                    hintText: 'Search Anything...',
                    hintStyle: MaterialStateProperty.all(const TextStyle(
                        color: Color.fromARGB(255, 190, 190, 190),
                        fontSize: 18)),
                  ),
                )),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 15),
                        child: Text("Categories", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Inter')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 10),
                        child: TextButton(
                          onPressed: () {},
                          child: Text("View All >", style: TextStyle(color: Colors.black, fontFamily: 'Inter')),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.warning), //TODO: ikon değişecek
                                    iconSize: 50,
                                  ),
                                  Text("Fashion", style: TextStyle(fontFamily: 'Inter')),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.warning), //TODO: ikon değişecek
                                    iconSize: 50,
                                  ),
                                  Text("Electronics", style: TextStyle(fontFamily: 'Inter')),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.warning), //TODO: ikon değişecek
                                    iconSize: 50,
                                  ),
                                  Text("Appliances", style: TextStyle(fontFamily: 'Inter')),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                        Icons.warning), //TODO: ikon değişecek
                                    iconSize: 50,
                                  ),
                                  Text("Beauty", style: TextStyle(fontFamily: 'Inter')),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                        Icons.warning), //TODO: ikon değişecek
                                    iconSize: 50,
                                  ),
                                  Text("Furniture", style: TextStyle(fontFamily: 'Inter')),
                                ],
                              ),
                            ),
                          ],
                        ),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.all(0.0),
                          height: 170,
                          child: PageView(
                            scrollDirection: Axis.horizontal,
                            controller: pageview1controller,
                            children: [
                              Container(
                                margin: EdgeInsets.all(0),
                                child: Image.asset('assets/images/banner.png', width: 500, height: 170),
                              ),
                              Image.asset('assets/images/banner.png',
                                  width: 150, height: 170),
                              Image.asset('assets/images/banner.png',
                                  width: 500, height: 170),
                              ],
                          )
                        )
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 15, left: 15),
                                alignment: Alignment.topLeft,
                                child: Text("Deal of the Day", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'Inter')),
                              ),
                              Container(
                                color: Color.fromARGB(255, 239, 68, 68),
                                margin: EdgeInsets.only(top: 5, left: 10, right: 50),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                alignment: Alignment.topLeft,
                                child: Text("11h 15m 04s", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white, fontFamily: 'Inter')),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded( 
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 10),
                              child: TextButton(
                                onPressed: () {},
                                child: Text("View All >", style: TextStyle(color: Colors.black, fontFamily: 'Inter')),
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset('assets/images/frame1.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Running Shoes"),
                                  ),
                                  Container(
                                    color: Color.fromARGB(255, 239, 68, 68),
                                    margin: EdgeInsets.only(top: 5),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    child: Text("Upto %40 OFF", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset('assets/images/frame2.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Sneakers"),
                                  ),
                                  Container(
                                    color: Color.fromARGB(255, 239, 68, 68),
                                    margin: EdgeInsets.only(top: 5),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    child: Text("%40-60 OFF", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset('assets/images/frame3.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Wrist Watches"),
                                  ),
                                  Container(
                                    color: Color.fromARGB(255, 239, 68, 68),
                                    margin: EdgeInsets.only(top: 5),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    child: Text("Upto %40 OFF", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  Container(
                                    child: Image.asset('assets/images/frame4.png'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text("Bluetooth Speakers", style: TextStyle()),
                                  ),
                                  Container(
                                    color: Color.fromARGB(255, 239, 68, 68),
                                    margin: EdgeInsets.only(top: 5),
                                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                    child: Text("Upto %40 OFF", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}