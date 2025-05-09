import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          children: [
            SvgPicture.asset(
              'assets/icons/8723177_route_map_icon.svg',
              semanticsLabel: 'rideapp',
              width: 100,
          ),
            CircularProgressIndicator(), 
            Text('Welcome..')], 
        ), 
      ), 
    ); 
  } 
} 