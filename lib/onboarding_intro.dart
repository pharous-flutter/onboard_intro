library onboarding_intro;

import 'package:flutter/material.dart';

import 'image.dart';
import 'indicator.dart';
import 'on_boarding_model.dart';

class OnBoardingIntro extends StatefulWidget {
  final List<OnBoardingData> data;
  final String logoImage;
  final bool isSvgImage;
  final Function onFinalClicked;
  final Function onSkipClicked;
  final TextStyle style;
  final Color selectedColor;
  final Color unSelectedColor;
  final String finishText;
  final String skipText;
  final String nextText;
  final String backText;

  OnBoardingIntro(
      {@required this.data,
      this.isSvgImage = false,
      this.logoImage,
      this.selectedColor=Colors.blue,
      this.onSkipClicked,
      this.unSelectedColor=Colors.grey,
      this.onFinalClicked,
      this.finishText,
      this.skipText,
      this.nextText,
      this.backText,
      this.style});

  @override
  _OnBoardingIntroState createState() => _OnBoardingIntroState();
}

class _OnBoardingIntroState extends State<OnBoardingIntro> {
  List<OnBoardingData> data;

  // OnBoardingData onBoardingData;
  int currentIndex = 0;
  PageController controller = PageController();

  @override
  void initState() {
    data = widget.data;
    // onBoardingData = data.first;
    controller.addListener(() {
      if (currentIndex == controller.page.toInt()) return;
      setState(() {
        currentIndex = controller.page.round();
        print('inedx : $currentIndex');
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: data.map((e) => buildBody(e)).toList(),
              ),
            ),
            SizedBox(
              height: 0,
            ),
            DotIndicator(
              selectedColor: widget.selectedColor,
              unSelectedColor: widget.unSelectedColor,
              length: data.length,
              currentIndex: currentIndex,
            ),
            SizedBox(
              height: 16,
            ),
            buildButtons(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBody(OnBoardingData onBoardingData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IntroImage(
          isSvgImage: widget.isSvgImage,
          image: widget.logoImage,
        ),
        buildImages(onBoardingData),

        Text(
          onBoardingData.description,
          textAlign: TextAlign.center,
          style: widget.style,
        ),

        // PageView(
        //   controller: controller,
        //   children: data.map((e) => buildImages(e)).toList(),
        // ),
      ],
    );
  }

  Row buildButtons() {
    bool isLast = (currentIndex == data.length - 1);
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: buildButton(isLast ? widget.finishText : widget.nextText,
              color: widget.selectedColor,
              borderColor: widget.selectedColor,
              showIcon: isLast ? Icons.done : Icons.arrow_back_ios_outlined,
              onTap: onNextClicked),
        ),
        SizedBox(width: 16),
        Expanded(
            child: buildButton(
                currentIndex == 0 ? widget.skipText : widget.backText,
                onTap: onSkipBackClicked,
                color: Colors.transparent,
                borderColor: Colors.black,
                textColor: Colors.black)),
      ],
    );
  }

  Widget buildButton(String text,
      {Color color,
      Color borderColor,
      IconData showIcon,
      Color textColor = Colors.white,
      Function onTap}) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            color: color,
            borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (showIcon != null)
              Icon(
                showIcon,
                color: Colors.white,
              ),
            Expanded(
              child: Container(
                height: 24,
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: textColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            if (showIcon != null)
              SizedBox(
                width: 24,
              )
          ],
        ),
      ),
    );
  }

  Widget buildImages(OnBoardingData onBoardingData) {
    return IntroImage(
      isSvgImage: onBoardingData.isSvg,
      image: onBoardingData.image,
      width: onBoardingData.imageWidth,
      height: onBoardingData.imageHeight,
    );
  }

  void onNextClicked() {
    if (currentIndex == data.length - 1)
      widget.onFinalClicked();
    else
      setState(() {
        controller.animateToPage(currentIndex + 1,
            duration: Duration(milliseconds: 300), curve: Curves.easeIn);
        // onBoardingData = data[currentIndex];
      });
  }

  void onSkipBackClicked() {
    if (currentIndex == 0 && widget.onSkipClicked != null)
      widget.onSkipClicked();
    else
      setState(() {
        controller.animateToPage(currentIndex - 1,
            duration: Duration(milliseconds: 300), curve: Curves.easeIn);
        // onBoardingData = data[currentIndex];
      });
  }
}
