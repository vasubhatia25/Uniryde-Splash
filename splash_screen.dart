import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp/login_screen.dart';
import 'package:flutterapp/main_screen.dart';

class MySplashScreen extends StatefulWidget{
  const MySplashScreen({Key? key}) : super(key:key);

  @override
  // ignore: library_private_types_in_public_api
  _MySplashScreenState createState() => _MySplashScreenState();

}

class _MySplashScreenState extends State<MySplashScreen>
{
  startTimer()
  {
    Timer(const Duration(seconds: 3), () async{
      // send user to home screen
      Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
    } );
  }
  @override
  void initState() {
    
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
     
            Image.asset('build/flutter_assets/images/image.png'),
            const Text("Uniryde here",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),)
          ],
        ),
      ),
    );
  }
}