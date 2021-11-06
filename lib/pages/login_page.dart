import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Form(
        key: _loginFormKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Username'),
                    controller: usernameController,
                  ),
                ),
                SizedBox(
                  width: 350.0,
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    controller: passwordController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ElevatedButton(
                      onPressed: () {
                        print(
                            "${usernameController.text} ${passwordController.text}");
                      },
                      child: const Text("Submit")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
