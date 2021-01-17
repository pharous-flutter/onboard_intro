import 'package:flutter/material.dart';
import 'package:onboarding_intro/on_boarding_model.dart';
import 'package:onboarding_intro/onboarding_intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<OnBoardingData> data = [
    OnBoardingData('images/onboarding1.svg',
        'First Screen Description...',
        isSvg: true),
    OnBoardingData(
      'images/onboarding2.svg',
      'Second Screen Description...',
      isSvg: true,
    ),
    OnBoardingData(
      'images/onboarding3.svg',
      'Third Screen Description...',
      isSvg: true,
    ),
  ];

  var _key;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: OnBoardingIntro(
        isSvgImage: true,
        selectedColor: Color(0xff35200b),
        unSelectedColor: Colors.grey,
        finishText: 'Home',
        nextText: 'Next',
        backText: 'Back',
        skipText: 'Skip',
        onFinalClicked: () {
         Scaffold.of(context).showSnackBar(SnackBar(content: Text('Finished')));
        },
        onSkipClicked: () {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Skiped')));
        },
        logoImage: 'images/logo.svg',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, wordSpacing: 2),
        data: data,
      ),
    );
  }
}
