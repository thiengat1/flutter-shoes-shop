import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Image.asset('assets/images/login.png'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 55,
            decoration: BoxDecoration(
                color: const Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      color: const Color(0xFF475269).withOpacity(0.3))
                ]),
            child: Row(children: [
              const Icon(
                Icons.person,
                size: 27,
                color: Color(0xFF475269),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Username'),
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 55,
            decoration: BoxDecoration(
                color: const Color(0xFFF5F9FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      color: const Color(0xFF475269).withOpacity(0.3))
                ]),
            child: Row(children: [
              const Icon(
                Icons.lock,
                size: 27,
                color: Color(0xFF475269),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Password'),
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forget Password',
                style: TextStyle(
                    color: Color(0xFF475269),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('homePage');
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFF475269),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 1,
                          color: const Color(0xFF475269).withOpacity(0.3))
                    ]),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1),
                ),
              )),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't Have Account? -",
                style: TextStyle(
                    color: const Color(0xFF475269).withOpacity(0.8),
                    fontSize: 18),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ))),
    );
  }
}
