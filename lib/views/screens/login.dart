import 'package:flutter/material.dart';
import 'package:screels/resources/colors.dart';
import 'package:screels/views/fields/textinput.dart';

class loginScreen extends StatelessWidget {
  loginScreen({super.key});

  final TextEditingController _emailtext = TextEditingController();
  final TextEditingController _passwordtext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Screels',
            style: TextStyle(
                fontSize: 75,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: "Billabong"),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Login',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: TextInputC(
                controller: _emailtext, labeltext: 'Email', icon: Icons.email),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: TextInputC(
                controller: _passwordtext,
                labeltext: 'Password',
                ifObscure: true,
                icon: Icons.lock),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: 50,
            decoration: BoxDecoration(
                color: loginColor,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: InkWell(
              onTap: () {
                print('login user');
              },
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account? ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              InkWell(
                onTap: () {
                  print('Navigating');
                },
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 20, color: loginColor),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
