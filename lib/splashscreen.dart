import 'package:flutter/material.dart';
import 'package:sharedpreferencesdemo/sharedpreferenceshelper.dart';
import 'homepage.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    doLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: []),
    ));
  }

  void doLogin() async {
    Future.delayed(Duration(seconds: 3), () async {
      final token = await SharedPreferencesHelper().getAuthToken();
      if (token != null && token.isNotEmpty) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomePage()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginPage()));
      }
    });
  }
}
