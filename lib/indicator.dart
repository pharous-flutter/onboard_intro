import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  int length;
  int currentIndex;
  Color unSelectedColor;
  Color selectedColor;

  DotIndicator(
      {this.currentIndex,
      this.length = 0,
      this.selectedColor = Colors.blue,
      this.unSelectedColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return buildIndicator(context);
  }

  Widget buildIndicator(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            length,
            (index) => buildDot(index, context),
          ),
        ),
      ),
    );
  }

  Widget buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 8,
      margin: EdgeInsets.symmetric(horizontal: 1),
      width: currentIndex == index ? 25 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? selectedColor : unSelectedColor,
      ),
    );
  }
}
