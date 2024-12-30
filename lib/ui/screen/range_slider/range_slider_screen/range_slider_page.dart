import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';
import 'package:my_practice/ui/screen/range_slider/widget/range_widget.dart';
import 'package:my_practice/ui/screen/switch_slider/switch_screen/switch_page.dart';

class RangeSliderPage extends StatefulWidget {
  const RangeSliderPage({super.key});

  @override
  State<RangeSliderPage> createState() => _RangeSliderPageState();
}

class _RangeSliderPageState extends State<RangeSliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.whiteColor,
        appBar: AppBar(
          title: Text(
            "This is Range Slider",
            style: regularTextStyle16.copyWith(color: MyColor.whiteColor),
          ),
        ),
        body: Column(
          children: [
           const RangeWidget(title1: "How Much Your Budget"),
            const  RangeWidget(title1: "How Much Your Budget"),
            const  RangeWidget(title1: "How Much Your Budget"),
            const  RangeWidget(title1: "How Much Your Budget"),
            const  RangeWidget(title1: "How Much Your Budget"),
            const   RangeWidget(title1: "How Much Your Budget"),
            SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SwitchPage()));
                    },
                    child: Text(
                      "Submit",
                      style: regularTextStyle16.copyWith(
                          color: MyColor.whiteColor),
                    )))
          ],
        ));
  }
}
