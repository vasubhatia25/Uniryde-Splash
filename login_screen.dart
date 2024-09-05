import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
{
  TextEditingController emailTextEditingcontroller = TextEditingController();
  TextEditingController passwordTextEditingcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 30,),

          Padding(padding: const EdgeInsets.all(20.0),
          child: Image.asset('build/flutter_assets/images/login.png'),),

          const SizedBox(height: 10,),

          const Text(
            "Let's Sign you in.",
            style: TextStyle(
              fontSize: 26,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),

          TextField(
            controller: emailTextEditingcontroller,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
              color: Colors.black
            ),
            decoration: const InputDecoration(
              labelText: "Username or Email",
              
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              
              
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
              )
            ),
          ),

          TextField(
            controller: passwordTextEditingcontroller,
            keyboardType: TextInputType.text,
            obscureText: true,
            style: const TextStyle(
              color: Colors.black
            ),
            decoration: const InputDecoration(
              labelText: "Password",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),

            ),
          ),
          const SizedBox(height: 20,),
          TextButton( 
            child:Text(
              "Don't have an account? Register",
              style: TextStyle(color: Colors.black),
            ),
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (c)=> SignUpScreen()));
            }, ),
         
           const SizedBox(height: 20,),
          ElevatedButton(onPressed: ()
          {
           // Navigator.push(context, MaterialPageRoute(builder: (c)=> CarInfoScreen()));
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
          ), 
          child: const Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            )
          ),),
          
          ],
        )
      ),
    ));
  }
}