import 'package:custom_halal_app/screens/splash_screens/splash_screen_one.dart';
import 'package:flutter/material.dart';


class HalalApps extends StatefulWidget {
  const HalalApps({super.key});

  @override
  State<HalalApps> createState() => _HalalAppsState();
}

class _HalalAppsState extends State<HalalApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halal Apps',
      home: SplashScreenOne(),
    );
  }
}