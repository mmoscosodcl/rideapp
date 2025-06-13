import 'package:flutter/material.dart';
import 'package:rideapp/screen/splash.dart';
import 'package:rideapp/theme/util.dart';
import 'package:rideapp/theme/theme.dart';
import 'package:connectivity_plus/connectivity_plus.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _hasInternet = false;

  @override
  void initState() {
    super.initState();
    _checkInternetConnection();
  }

  Future<void> _checkInternetConnection() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    setState(() {
      _hasInternet = connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi;
    });
  }

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    // Use Raleway font only if there is internet, otherwise use default font
    TextTheme textTheme = _hasInternet
        ? createTextTheme(context, "Raleway", "Raleway")
        : Theme.of(context).textTheme;

    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      title: 'rideapp',
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const Splash(),
    );
  }
}