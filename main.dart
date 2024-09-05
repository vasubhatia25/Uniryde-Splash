import 'package:flutter/material.dart';
import 'package:flutterapp/splash_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
     MyApp(
      child: MaterialApp(
        title: 'Uniryde',
        theme: ThemeData(
          primarySwatch: Colors.grey,),
          home: MySplashScreen(),
debugShowCheckedModeBanner: false,
    )
  ));
}


class MyApp extends StatefulWidget
{
 final Widget? child;

 const MyApp({super.key, this.child});

 static void restartApp(BuildContext context){
  context.findAncestorStateOfType<_MyAppState>()!.restartApp();

 }
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp(){
    setState(() {
      key = UniqueKey();
    });
  }
  @override
  Widget build (BuildContext context){
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}

