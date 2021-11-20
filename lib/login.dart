import 'package:flutter/material.dart';
import 'package:sharedpreferencesdemo/api.dart';
import 'package:sharedpreferencesdemo/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 200),
                ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    Api().loginUser();
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => HomePage()));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
