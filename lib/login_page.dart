import 'package:flutter/material.dart';
import 'package:food_app/home_page.dart';
import 'package:food_app/some.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isPasswordHidden = true;
  final _controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String username = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 770,
        child: Stack(
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



                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 29.0,right: 29.0,top: 31.0,bottom: 10.0),
                          child: TextFormField(
                            onSaved: (value){
                              username = value!;
                            },
                            validator: (value){
                              if(value!.isEmpty ) return "Your username is empty !";


                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Username",

                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 29.0,right: 29.0,),
                          child: TextFormField(
                            onSaved: (value){
                              password = value!;
                            },
                            validator: (value){
                              if(value!.isEmpty ) return "Your password is empty !";
                              else if(value.length < 8) return "Your password required 8-12 symbols !";

                            },
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter your password",
                              fillColor: Colors.blue,
                              suffixIcon:IconButton(onPressed: (){

                                setState(() {
                                  _isPasswordHidden = !_isPasswordHidden;
                                });

                              }, icon: _isPasswordHidden ? const Icon(
                                  Icons.visibility_off) : const Icon(Icons.visibility)
                              ),
                            ),
                            obscureText: _isPasswordHidden,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Saall()));
                      },
                      child: const Text("Forgot Password ?")),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(

                      width: 380.0,
                      height: 49.0,

                      margin: EdgeInsets.only(left: 29.0,right: 29.0,top: 25.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(color: Colors.blue)
                                )
                            )
                        ),
                        onPressed: (){

                          final isValid = formKey.currentState!.validate();
                          if(isValid){
                            formKey.currentState!.save();
                            print("Username: $username");
                            print("Password: $password");


                            Navigator.push(context,MaterialPageRoute(builder: (context)=> HomePage()));
                          }




                        },
                        child:const Text("Login",
                          style:const TextStyle(
                            fontFamily: 'mont',
                            fontSize: 24.0,
                            fontWeight: FontWeight.normal,

                          ),
                        ),
                      )
                  ),

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
      ),
    );
  }
}
