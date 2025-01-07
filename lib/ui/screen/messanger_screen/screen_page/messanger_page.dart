import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/messanger_screen/widget/card_widget_page.dart';
import 'package:event/ui/screen/tab_controller/tab_control/tab_control_page.dart';
import 'package:flutter/material.dart';

class MessangerPage extends StatefulWidget {
  const MessangerPage({super.key});

  @override
  State<MessangerPage> createState() => _MessangerPageState();
}

class _MessangerPageState extends State<MessangerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.backgroundColor1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              CardWidgetPage(
                  image: MyImage.meetup,
                  title1: "Desiner Meetup 22",
                  title2: "03 October 22",
                  title3: "Banani, Dhaka",
                  title4: "\$10 USD"),
              CardWidgetPage(
                  image: MyImage.meetup,
                  title1: "Desiner Meetup 22",
                  title2: "03 October 22",
                  title3: "Banani, Dhaka",
                  title4: "\$10 USD"),
              CardWidgetPage(
                  image: MyImage.meetup,
                  title1: "Desiner Meetup 22",
                  title2: "03 October 22",
                  title3: "Banani, Dhaka",
                  title4: "\$10 USD"),
              CardWidgetPage(
                  image: MyImage.meetup,
                  title1: "Desiner Meetup 22",
                  title2: "03 October 22",
                  title3: "Banani, Dhaka",
                  title4: "\$10 USD"),
              CardWidgetPage(
                  image: MyImage.meetup,
                  title1: "Desiner Meetup 22",
                  title2: "03 October 22",
                  title3: "Banani, Dhaka",
                  title4: "\$10 USD"),
              CardWidgetPage(
                  image: MyImage.meetup,
                  title1: "Desiner Meetup 22",
                  title2: "03 October 22",
                  title3: "Banani, Dhaka",
                  title4: "\$10 USD"),
              CardWidgetPage(
                  image: MyImage.meetup,
                  title1: "Desiner Meetup 22",
                  title2: "03 October 22",
                  title3: "Banani, Dhaka",
                  title4: "\$10 USD"),
              CardWidgetPage(
                  image: MyImage.meetup,
                  title1: "Desiner Meetup 22",
                  title2: "03 October 22",
                  title3: "Banani, Dhaka",
                  title4: "\$10 USD"),
              CardWidgetPage(
                  image: MyImage.meetup,
                  title1: "Desiner Meetup 22",
                  title2: "03 October 22",
                  title3: "Banani, Dhaka",
                  title4: "\$10 USD"),
            ],
          ),
        ));
  }
}
