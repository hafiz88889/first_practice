import 'package:flutter/material.dart';
class ImageRowWidget extends StatelessWidget {
  final String image;
  const ImageRowWidget({super.key,
  required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
      ),
    );
  }
}
