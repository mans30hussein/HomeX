import 'package:flutter/cupertino.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key,
      required this.height,
      required this.width,
      required this.image});
  final double height;
  final double width;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(image), alignment: Alignment.topCenter),
      ),
    );
  }
}
