import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class PayWidget extends StatefulWidget {
  final String title;
  final String image;
  final int value;
  const PayWidget({super.key,
  required this.title,
  required this.image,
  required this.value,
  });

  @override
  State<PayWidget> createState() => _PayWidgetState();
}
int _value=0;
class _PayWidgetState extends State<PayWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: MyColor.greyColor.withAlpha(50)),
      ),
      child: Row(
        children: [
          Image(image: AssetImage(widget.image),height: 25,width: 25,),
          const SizedBox(width: 5,),
          Text(widget.title,style: regularTextStyle16.copyWith(color: MyColor.blackColor),),
          const Spacer(),
          Radio(
              activeColor: MyColor.greenColor,
              value: widget.value,
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  // _value =value!;
                });
              }
          ),
        ],
      ),
    );
  }
}
