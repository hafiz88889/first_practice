import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';
import 'package:my_practice/ui/screen/switch_slider/widget/switch_widget.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        title: Text("Switch slider",style: regularTextStyle16,),
      ),
      body:const Column(
        children: [
          SwitchWidget(),
          SwitchWidget(),
          SwitchWidget(),
          SwitchWidget(),
        ],
      ),
    );
  }
}
