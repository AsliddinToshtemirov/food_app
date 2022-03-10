import 'package:flutter/material.dart';
import 'package:food_app/leading3.dart';

class Leading_two extends StatelessWidget {
  const Leading_two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_arrow_right_sharp),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Leading_sree()),
          );
        },
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SafeArea(
          child: SizedBox(
            height: 900,
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
            "assets/images/leading_two.png",
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
              "Temukan harga terbaik",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
          child: Column(children: [
            const Text(
              "Ada banyak pilihan menu makanan disini ",
              style: const TextStyle(
                fontSize: 18,
              ),
            )
          ]),
        )
      ]),
    );
    ;
  }
}
