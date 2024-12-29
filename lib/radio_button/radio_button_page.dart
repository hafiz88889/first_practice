import 'package:first_practice/global_widget/radio_button_global_widget.dart';
import 'package:first_practice/utils/text_style.dart';
import 'package:flutter/material.dart';

class RadioButtonPage extends StatefulWidget {
  const RadioButtonPage({super.key});

  @override
  State<RadioButtonPage> createState() => _RadioButtonPageState();
}

class _RadioButtonPageState extends State<RadioButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Radio Button",
          style: regularTextStyle,
        ),
      ),
      body: const SingleChildScrollView(
        child:  Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RadioButtonGlobalWidget(
                  title1: "What is your country name?",
                  title2: "India",
                  title3: "Bangladesh",
                  title4: "Nepal",
                  title5: "Butan"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RadioButtonGlobalWidget(
                  title1: "Your religion?",
                  title2: "Islam",
                  title3: "Hindu",
                  title4: "Cristian",
                  title5: "Chakma"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RadioButtonGlobalWidget(
                  title1: "What is the name of national poet of bangladesh?",
                  title2: "Robindronath Thakur",
                  title3: "Kazi Nazrul Islam",
                  title4: "Josim Uddin",
                  title5: "Issor Chandra Biddar Sagor"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RadioButtonGlobalWidget(
                  title1: "What do your want to be your career?",
                  title2: "Businessman",
                  title3: "Software Developer",
                  title4: "Employment",
                  title5: "Freelancer"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: RadioButtonGlobalWidget(
                  title1: "Which Country want to visit you?",
                  title2: "USA",
                  title3: "Uk",
                  title4: "Nepal",
                  title5: "Butan"),
            ),
          ],
        ),
      )

    );
  }
}
