import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class TopCircleWidget extends StatefulWidget {
  final Color circle;
  final String title;
  final String boxIcon;
  const TopCircleWidget({super.key,
  required this.circle,
    required this.title,
    required this.boxIcon,
  });

  @override
  State<TopCircleWidget> createState() => _TopCircleWidgetState();
}

class _TopCircleWidgetState extends State<TopCircleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: 60,
          width:60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: widget.circle,
          ),
          child: Image(image: AssetImage(widget.boxIcon))
        ),
        const SizedBox(height: 3,),
        Text(widget.title,style: regularTextStyle14.copyWith(color: MyColor.blackColor,fontSize: 12),)
      ],
    );
  }
}
