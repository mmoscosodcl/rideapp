import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rideapp/screen/home.dart';

class Splash extends StatefulWidget { 
  const Splash({super.key}); 
  
  @override 
  State<Splash> createState() => _SplashState(); 
} 
  
class _SplashState extends State<Splash> { 
   
  @override 
 void initState() { 
   super.initState(); 
 
   Timer( 
     Duration(seconds: 5), 
     () => Navigator.pushReplacement( 
       context, 
       MaterialPageRoute( 
         builder: (context) => MyHomePage(title: 'Rideapp'), 
       ), 
     ), 
   ); 
 } 

  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [CircularProgressIndicator(), Text('Welcome..')], 
        ), 
      ), 
    ); 
  } 
} 