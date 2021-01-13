class OnBoardingData {
  String image;
  double imageWidth;
  double imageHeight;
  bool isSvg;
  String description;

  OnBoardingData(this.image, this.description,
      {this.isSvg = false,
      this.imageHeight,
      this.imageWidth});
}
