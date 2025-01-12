import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String image;
  const ImageWidget({super.key,
  required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
      ),
    );
  }
}
