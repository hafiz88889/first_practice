import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_practice/ui/screen/cupersino_slider/cupersino_screen/cupersino_slider.dart';
import 'package:my_practice/ui/screen/slider_page/slider_screen/slider_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData.dark(),
     debugShowCheckedModeBanner: false,
     home:const SliderPage(),
   );
  }

}
