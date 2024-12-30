import 'package:flutter/cupertino.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';

class CupersinoWidget extends StatefulWidget {
  final String title1;
  const CupersinoWidget({super.key,
  required this.title1,
  });

  @override
  State<CupersinoWidget> createState() => _CupersinoWidgetState();
}

class _CupersinoWidgetState extends State<CupersinoWidget> {
  double _currentValue=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.title1,style: regularTextStyle14,),
         const SizedBox(width: 10,),
          CupertinoSlider(
            activeColor: MyColor.blueColor,
            thumbColor: MyColor.redColor,
            value: _currentValue,
            min: 0,
            max: 100,
            divisions: 10,
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
          ),
          Text(_currentValue.toString(),style: regularTextStyle14,),
        ],
      ),
    );
  }
}
