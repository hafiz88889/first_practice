import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';
import 'package:my_practice/ui/screen/cupersino_slider/cupersino_screen/cupersino_slider.dart';
import 'package:my_practice/ui/screen/slider_page/widget/slider_widget.dart';
import 'package:my_practice/ui/screen/slider_page/widget/slider_widget_two.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.whiteColor,
        appBar: AppBar(
          title: Text(
            "Slider",
            style: regularTextStyle18,
          ),
          backgroundColor: MyColor.blueColor,
        ),
        body:SingleChildScrollView(
          child:  Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                children: [
                  const  SliderWidget(title1: "Bata Brand gives ratting"),
                  const  SliderWidget(title1: "Apex Brand gives ratting"),
                  const  SliderWidget(title1: "Basundhara Brand gives ratting"),
                  const  SliderWidget(title1: "City group Brand gives ratting"),
                  const  SliderWidget(title1: "Samsung Brand gives ratting"),
                  const  SliderWidget(title1: "Vivo Brand gives ratting"),
                  const  SliderWidget(title1: "Apple Brand gives ratting"),
                  const  SliderWidget(title1: "Fresh Brand gives ratting"),
                  SliderWidgetTwo(),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(MyColor.blueColor),
                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const CupersinoSlider()));
                        },
                        child: Text(
                          "Submit",
                          style: regularTextStyle18.copyWith(color: MyColor.whiteColor),
                        )),
                  ),
                ]
            ),
          ),
        )
    );
  }
}
