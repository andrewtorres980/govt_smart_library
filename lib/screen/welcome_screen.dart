// ignore_for_file: prefer_const_constructors, deprecated_member_use, camel_case_types, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'register_Screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/trophy.jpg'), fit: BoxFit.fitHeight)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Govt Smart Library',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 200),
              Container(
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Welcome to our Govt Smart library app! Enjoy easy book browsing and management.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
               Container(
                    color: Colors.white,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 100,left: 10,right:10,bottom:100),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                              },
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color:  Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black12)),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                              SizedBox(height: 15),
                    Text(
                      'or',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                        InkWell(
                          onTap: () {          
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterScreen()));
                          },
                          child: Text(
                            ' Sign up',
                            style: TextStyle(
                              fontSize: 15,
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                          ],
                        ))),
            ],
          ),
        ),
      ),
    );
  }
}
