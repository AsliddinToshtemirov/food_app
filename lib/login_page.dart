import 'package:flutter/material.dart';
import 'package:food_app/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPassHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset("assets/images/Rectangle.png"),
              Image.asset("assets/images/bgimage.png")
            ],
          ),
          Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/burger.png",
                      height: 60,
                      width: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(4, 25, 4, 0),
                      child: Text(
                        'NeedFood',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  "Sign In",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(34, 0, 34, 0),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_outline),
                            border: OutlineInputBorder(),
                            labelText: "Username",
                            hintText: "Username"),
                        obscureText: false,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(34, 0, 34, 0),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            // suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),

                            border: OutlineInputBorder(),
                            labelText: "Password",
                            hintText: "Enter your password"),
                        obscureText: false,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {}, child: const Text("Forgot Password ?")),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                    height: 60, //height of button
                    width: 320, //width of button
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 24),
                        ),
                        style: ElevatedButton.styleFrom(
                          //background color of button
                          //border width and color
                          //elevation of button
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30)),
                        ))),
                const SizedBox(
                  height: 90,
                ),
                Column(children: [
                  InkWell(
                    onTap: (() {}),
                    child: const Text(
                      "No account yet",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Sign up now",
                      style: TextStyle(color: Color.fromARGB(255, 8, 121, 214)),
                    ),
                  )
                ])
              ])
        ],
      ),
    );
  }
}
