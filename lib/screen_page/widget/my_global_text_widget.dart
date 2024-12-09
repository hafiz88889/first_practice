import 'package:flutter/material.dart';
import 'package:first_practice/utilis/text_style.dart';
class globalWidgetText extends StatelessWidget {
  final String params;
  const globalWidgetText({super.key,required this.params});

  @override
  Widget build(BuildContext context) {
    return Text(params, style: regularTextStyle.copyWith(color: Colors.black),);
  }
}


class widget2 extends StatelessWidget {
  final String params;
  const widget2({super.key,required this.params});

  @override
  Widget build(BuildContext context) {
    return Text(params, style: textType.copyWith(color: Colors.pink,fontSize: 20) ,);
  }
}

class Widget3 extends StatelessWidget {
  const Widget3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
