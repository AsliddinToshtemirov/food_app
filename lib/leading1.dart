// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_app/leading2.dart';

class leading_first extends StatelessWidget {
  const leading_first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_right_sharp),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Leading_two()),
          );
        },
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SafeArea(
          child: SizedBox(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(24, 0, 0, 20),
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
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: Image.asset(
            "assets/images/leading_one.png",
            height: 300,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(children: [
            const Text(
              "Pilih menu favoritemu",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
          child: Column(children: [
            const Text(
              "Ada banyak jenis makanan yang tersedia disini",
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ]),
        )
      ]),
    );
  }
}
