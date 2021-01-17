#  OnBoardingIntro

[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/xsahil03x) 

A OnBoarding Intro Screen Library for Easy and Quick Usage.
* Checkout the Original Author : [![GitHub followers](https://img.shields.io/github/stars/matthew-carroll/flutter_ui_challenge_material_page_reveal.svg?style=social&label=Follow)](https://github.com/matthew-carroll/flutter_ui_challenge_material_page_reveal)
* Checkout the Original Designer : [![GitHub followers](https://img.shields.io/github/stars/Ramotion/paper-onboarding-android.svg?style=social&label=Follow)](https://github.com/Ramotion/paper-onboarding-android)

The source code is **100% Dart**, and everything resides in the [/lib](https://github.com/pharous-flutter/onboard_intro/tree/master/lib) folder.


### Show some :heart: and star the repo to support the project



[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://opensource.org/licenses/MIT)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/pharous-flutter/onboard_intro/tree/master/LICENSE)


### GIF
<img src="https://github.com/pharous-flutter/onboard_intro/blob/master/assets/onBoarding%20intro.gif" height="400" alt="GIF"/>

## 💻 Installation
In the `dependencies:` section of your `pubspec.yaml`, add the following line:



```
onboarding_intro: <latest_version>
```

## ❔ Usage

### Import this class
```dart
import 'package:onboarding_intro/onboarding_intro.dart';
```

### Create a List of OnBoardingData

```dart
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
```

### Pass it into the OnBoardingIntro widget
```dart
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
```

## 🎨 Customization and Attributes

#### OnBoardingIntro attributes
<table>
    <th>Attribute Name</th>
    <th>Example Value</th>
    <th>Description</th>
    <tr>
        <td>data</td>
        <td>List&lt;OnBoardingData&gt;</td>
        <td>The list of pages to be displayed</td>
    </tr>
    <tr>
        <td>onFinalClicked</td>
        <td>(){}</td>
        <td>Function to be called on pressing done button</td>
    </tr>
    <tr>
        <td>onSkipClicked</td>
        <td>(){}</td>
        <td>Function to be called on pressing skip button</td>
    </tr>
    <tr>
        <td>finishText</td>
        <td>"Let's Go"</td>
        <td>Done button text "</td>
    </tr>
    <tr>
        <td>skipText</td>
        <td>"Skip"</td>
        <td>Skip button text "</td>
    </tr>
   <tr>
        <td>nextText</td>
        <td>"Next"</td>
        <td>Next button text "</td>
    </tr>
    <tr>
        <td>isSvgImage</td>
        <td>true</td>
        <td>Logo image should be svg or not. Defaults to true</td>
    </tr>
    <tr>
        <td>logoImage</td>
        <td>8.0</td>
        <td>App logo Image</td>
    </tr>
    <tr>
        <td>style</td>
        <td>TextStyle(fontSize: 17, fontWeight: FontWeight.bold, wordSpacing: 2)</td>
        <td>Custom text style for details text</td>
    </tr>
    <tr>
        <td>selectedColor</td>
        <td>Color(0xff35200b)</td>
        <td>selected color  content defualt is Colors.blue</td>
    </tr>
   <tr>
        <td>unSelectedColor</td>
        <td>Color(0xff35200b)</td>
        <td>selected color  content defualt is Colors.grey</td>
    </tr>
</table>

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<table>
  <tr>
   <td align="center"><a href="https://github.com/ahmedelsayed96"><img src="https://avatars1.githubusercontent.com/u/18017854?s=100" width="100px;" alt=""/><br /><sub><b>Ahmed Eslayed</b></sub></a><br /><a href="https://github.com/ahmedelsayed96" title="Coding">💻</a></td>
</table>

# 📃 License

    Copyright (c) 2012 Pharous
    
    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
