import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget{
  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen>
{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('welcome to home screen'),
      ),
    );
  }
}