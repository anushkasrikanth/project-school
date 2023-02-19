import 'package:flutter/material.dart';

class MyWelcome extends StatefulWidget {
  const MyWelcome({super.key});

  @override
  State<MyWelcome> createState() => _MyWelcomeState();
}

class _MyWelcomeState extends State<MyWelcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 130),
                child: const Text(
                  'Welcome Back!',
                  style: TextStyle(
                      color: Color(0xff4c505b),
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      right: 35,
                      left: 35),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff4c505b)),
                      child: const Text('Logout',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.w400)))),
            ],
          )),
    );
  }
}
