import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "img/loginimg.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left:20, right:20),
              width: w,
              child: Column(
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "Please sign into your account",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[500]
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1,1),
                          color: Colors.grey.withOpacity(0.2)
                        )
                      ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email, color: Colors.deepPurpleAccent),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0
                          )
                        ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                      )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.2)
                          )
                        ]
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(Icons.password_outlined, color: Colors.deepPurpleAccent),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 1.0
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            )
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Container(),),
                      Text(
                        "Forgot password",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[500]
                        ),
                      )
                    ]
                  )
                ],
              )
            ),
            SizedBox(height: 70,),
            Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(
                          "img/loginbtn.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: w * 0.2),
            RichText(text: TextSpan(
              text: "Create a new account",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20
              ),
              recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpPage())
            )
            )
          ]
      ),
    );
  }
}
