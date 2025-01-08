import 'package:event/config/utils/my_color.dart';
import 'package:flutter/material.dart';

class BottomCardWidget extends StatelessWidget {
  final image;
  const BottomCardWidget({super.key,
  required this.image
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(15),
      height: 60,
      width: 75,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(15),
        border: Border.all( color: MyColor.searchText,width: 1.5),
      ),
      child: Image(image: AssetImage(image)),
    );
  }
}
