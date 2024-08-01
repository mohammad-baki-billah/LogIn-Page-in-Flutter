import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,

      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Text('Hello, Welcome to LogIn page',
                   style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                     color: Colors.black,
                  ),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text('My flutter app',
                  style: TextStyle(
                    fontSize: 20, 
                    color: Colors.black87),
                    ),
                ),
              ),
              // Username TextField
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                   filled: true,
                  fillColor: Colors.white,
                  enabled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                    borderSide: BorderSide(color: Colors.blue),  
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.blue)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color:Colors.blue),
                  ),
                  
                 
                ),
              ),

              //password textfield
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  enabled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
                //obscureText: true, // This is to hide the password text
              ),

              const SizedBox(
                height: 10,
              ),

              // Forget Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  
                  onPressed: () {
                    // Your onPressed function here
                    print('Forget Click');
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue.shade300,
                  ), 
                  child: const Text("Forgot Password" ),
                ),
                
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Or sign in with'),

              const SizedBox(
                height: 16,
              ),
              // Elevated Login Button
              ElevatedButton(onPressed: (){
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
               child: const Text('Login'),),
               
               const SizedBox(
                height: 50,
               ),

               // Sign in with Facebook and Google
              ElevatedButton(
                onPressed: () {
                  print('Login Click');
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50),),
                  ),
                  
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset('assets/images/facebook.png', height: 22, width: 22,),
                  const SizedBox(
                    width: 14,
                  ),
                  Text('LogIn with Facebook'),
                ],)
              ),
              
              const SizedBox(
                height: 16,
              ),
              // Sign in with Google
              ElevatedButton(onPressed: (){
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset('assets/images/google.png', height: 22, width: 22),
                const SizedBox(
                  width: 14,
                ),
                Text ('Login with google'),
              ],
              ),),

              const SizedBox(
                height: 16,
              ),

              // Sign up Button
              Row(
                children: [
                  const Text("Don\'t have account?",
                   style: TextStyle(color: Colors.black),),
                  TextButton(onPressed: (){

                  }, 
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.blue.shade300
                  ),
                  child: const Text('SungUp',
                  style: TextStyle(
                    decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}