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
    OnBoardingData('images/on_boarding_1.svg',
        'من خلال سليم ، يراك الدكتور في المنزل ، ويمكنه فهم نمط حياتك بشكل أفضل من خلال متابعة نظامك الغذائي ، مراجعةوصفاتك الطبية و متابعة تاريخك الصحي للمساعدة علي تقيم حالتك بشكل أفضل و تقديم الرعاية المناسبة.',
        isSvg: true),
    OnBoardingData(
      'images/on_boarding_2.svg',
      'محتوى الصفحة الثانية من التعريف بالتطبيق ... محتوى الصفحة الثانية من التعريف بالتطبيق ... محتوى الصفحة الثانية من التعريف بالتطبيق ... محتوى الصفحة الثانية من التعريف بالتطبيق ... محتوى الصفحة الثانية من التعريف بالتطبيق ... ',
      isSvg: true,
    ),
    OnBoardingData(
      'images/on_boarding_3.svg',
      'محتوى الصفحة الثالثة من التعريف بالتطبيق ... محتوى الصفحة الثالثة من التعريف بالتطبيق ... محتوى الصفحة الثالثة من التعريف بالتطبيق ... ',
      isSvg: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingIntro(
        isSvgImage: true,
        selectedColor: Colors.red,
        unSelectedColor: Colors.grey,
        finishText: 'Home',
        nextText: 'Next',
        backText: 'Back',
        skipText: 'Skip',
        onFinalClicked: () {
          print('Finished');
        },
        onSkipClicked: () {
          print('Skiped');
        },
        logoImage: 'images/logo_login.svg',
        style: TextStyle(
            fontSize: 17, fontWeight: FontWeight.bold, wordSpacing: 2),
        data: data,
      ),
    );
  }
}
