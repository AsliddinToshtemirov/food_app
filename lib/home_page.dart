// ignore_for_file: prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:food_app/database/database.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
    return Scaffold(
      //Remember to add extendBody: true to scaffold!
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.favorite_border_outlined, title: "Liked"),
          TabData(iconData: Icons.shopping_cart, title: "Basket"),
          TabData(iconData: Icons.person_outlined, title: "account"),
        ],
        onTabChangedListener: (position) {},
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Image.asset(
                      "assets/images/burger.png",
                      height: 40,
                      width: 40,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 2, 5),
                    child: Text(
                      "Need",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      "Food",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 140,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Image.asset("assets/images/row_banner.png"),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 35, 30, 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Paket cheese",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          "  Burger komplit",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        SizedBox(
                          height: 30,
                          width: 110,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: const LinearGradient(colors: [
                                    Color.fromARGB(255, 236, 54, 54),
                                    Color.fromARGB(255, 1, 19, 11)
                                  ])),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                      alignment: Alignment.center,
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.transparent),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                      )),
                                  onPressed: () {},
                                  child: const Text(
                                    "Order Now",
                                    style: TextStyle(color: Colors.white),
                                  ))),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/menu_1.png',
                          ),
                          const Text("Burger")
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/tea.png',
                          ),
                          const Text("Drink")
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.only(top: 5),
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/pizza.png",
                          ),
                          const Text("Pizza")
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    ),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: const Text(
                    "Popular Now",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 197,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    MyItem(food[0]),
                    SizedBox(
                      width: 8,
                    ),
                    MyItem(food[1]),
                    SizedBox(
                      width: 8,
                    ),
                    MyItem(food[2])
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: const Text(
                    "Recomended",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )),
              Container(
                height: 197,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    big(food[0]),
                    big(food[1]),
                    big(food[2]),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget MyItem(Foods food) {
  return Card(
    child: SizedBox(
      height: 170,
      width: 130,
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Image.asset(food.imageUrl, height: 85),
          const SizedBox(
            height: 6,
          ),
          Text(
            food.ingrideints,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            food.some,
            style: const TextStyle(fontSize: 13),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            food.cost,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 5,
  );
}

Widget big(Foods food) {
  return Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: Image.asset(
      food.imageUrl,
      fit: BoxFit.fill,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 5,
    margin: EdgeInsets.all(10),
  );
}
