import 'package:custom_halal_app/screens/splash_screens/splash_screen_two.dart';
import 'package:flutter/material.dart';


class SplashScreenOne extends StatefulWidget {
  const SplashScreenOne({super.key});

  @override
  State<SplashScreenOne> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _moveToSplashScreenTwo();
  }
  Future<void> _moveToSplashScreenTwo()async{
    await Future.delayed(Duration(seconds: 3),);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashScreenTwo(),),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height:500, child: Center(child: Image.asset('assets/images/logo.png',height: 200,width: 200,))),
          Container(child: Image.asset('assets/images/loader.png')),
          //Image.asset('assets/images/status_bar_black.png'),
        ],
      ),
    );
  }
}