import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'authentication/auth_controller.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    List images = [
      "g.png",
      "t.png",
      "f.png",
    ];

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 83, 83),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: w,
                height: h * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "img/banner.png",
                  ),
                  fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                height: w * 0.15,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\t\tSign Up for a Blast",
                      style: TextStyle(
                          fontFamily: 'ZenDots',
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.35),
                            )
                          ]),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: "Email Id",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color.fromARGB(255, 255, 83, 83),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 231, 124, 159),
                                  width: 1.0,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.35),
                            )
                          ]),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: Icon(
                              Icons.password,
                              color: Color.fromARGB(255, 255, 83, 83),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  AuthController.instance.register(emailController.text.trim(),
                      passwordController.text.trim());
                },
                child: Container(
                    width: w * 0.5,
                    height: h * 0.08,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage(
                            "img/loginbtn.png",
                          ),
                          fit: BoxFit.cover,
                        )),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: 'ZenDots',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.back(),
                      text: "Already Have an Account?",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ))),
              SizedBox(
                height: h * 0.03,
              ),
              RichText(
                  text: TextSpan(
                text: "Sign Up using one of the following methods",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              )),
              Wrap(
                children: List<Widget>.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 255, 83, 83),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("img/" + images[index]),
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ));
  }
}
