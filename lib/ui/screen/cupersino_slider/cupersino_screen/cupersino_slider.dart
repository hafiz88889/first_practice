import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';
import 'package:my_practice/ui/screen/cupersino_slider/widget/cupersino_widget.dart';
import 'package:my_practice/ui/screen/range_slider/range_slider_screen/range_slider_page.dart';

class CupersinoSlider extends StatefulWidget {
  const CupersinoSlider({super.key});

  @override
  State<CupersinoSlider> createState() => _CupersinoSliderState();
}

class _CupersinoSliderState extends State<CupersinoSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.whiteColor,
        appBar: AppBar(
          title: Text("Cupersino Slider",
              style: regularTextStyle16.copyWith(color: MyColor.whiteColor)),
          backgroundColor: MyColor.blackColor,
        ),
        body: Column(
          children: [
           const CupersinoWidget(title1: "Ratting this product"),
            const  CupersinoWidget(title1: "Ratting this Ui"),
            const CupersinoWidget(title1: "Ratting this brand"),
            const  CupersinoWidget(title1: "Ratting this hotel"),
            const CupersinoWidget(title1: "Ratting this road"),
            const CupersinoWidget(title1: "Ratting this resturant"),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(MyColor.blueColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const RangeSliderPage()));
                  },
                  child: Text(
                    "Submit",
                    style:
                        regularTextStyle18.copyWith(color: MyColor.whiteColor),
                  )),
            )
          ],
        ));
  }
}
