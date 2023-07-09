import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../resources/colors.dart';
import '../fields/textinput.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final TextEditingController _emailtext = TextEditingController();
  final TextEditingController _passwordtext = TextEditingController();
  final TextEditingController _usernametext = TextEditingController();

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
            height: 35,
          ),
          const Text(
            'Register',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNS-TPLXO_lF1gJZBI0oHkJFFtkFiBxoWXaHdOl9bvppoRu8fv4l8Mik2L6b9EQW9vlYk&usqp=CAU'),
                backgroundColor: Colors.white,
              ),
              Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: () {
                      print('Add a photo');
                    },
                    icon: Icon(
                      Icons.add_a_photo,
                      color: Colors.lightBlue,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: TextInputC(
                controller: _usernametext,
                labeltext: 'Username',
                icon: Icons.person),
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
            height: 30,
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
                print('register user');
              },
              child: const Center(
                child: Text(
                  'Register',
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
                'Already have an account? ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              InkWell(
                onTap: () {
                  print('Navigating');
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20, color: loginColor),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
    ;
  }
}
