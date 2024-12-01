
import 'package:flutter/material.dart';

import '../consts/const_variable.dart';
import '../customs/custom_bottun.dart';
import '../customs/custom_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      // login page
      width: double.infinity,
      height: double.infinity,
      color: ksecondColor,
      child: Column(
        children: [
          Container(
            // container has column with two text
            height: 200,
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Use your Email and Password',
                  style: TextStyle(color: Colors.white54, fontSize: 20),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Form(
                  key: formkey,
                  // login form
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomField(
                        // Email Custom field
                        hittext: 'Email',
                        labeltext: 'Email',
                        onvalid: (p0) {
                          // validation here
                          if (p0?.isEmpty ?? true) {
                            return 'Put Your Email';
                          }
                          return null;
                        },
                      ),
                      kHeightBox,
                      CustomField(
                        // password custom field
                        hittext: 'Password',
                        labeltext: 'password',
                        onvalid: (p0) {
                          // validation gere
                          if (p0?.isEmpty ?? true) {
                            return 'Put Your Password';
                          } else if (p0!.length < 8) {
                            return 'weak password';
                          }
                          return null;
                        },
                      ),
                      kHeightBox,
                      CustomButton(
                        // login button
                        text: 'LOGIN',
                        ontap: () {
                          // here do validate on submit
                          formkey.currentState!.validate();
                        },
                      ),
                      kHeightBox,
                      Row(
                        // row has text and linktext
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('I have an acount already! '),
                          GestureDetector(
                            onTap: () {
                              // push signup page
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Container();
                              }));
                            },
                            child: const Text(
                              'SIGN UP',
                              style: TextStyle(color: Colors.purple),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
