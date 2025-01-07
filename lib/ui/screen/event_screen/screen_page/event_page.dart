import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/event_screen/widget/card_widget.dart';
import 'package:event/ui/screen/tab_controller/tab_control/tab_control_page.dart';
import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor1,
      body: Column(
        children: [
          LongCard(
              image: MyImage.banner,
              title1: "Internation Brand Music Consert 22",
              title2: "12-15 Oct 22",
              title3: "Mirpur Cricket Stadium Dhaka"),
          const SizedBox(height: 10,),
          LongCard(
              image: MyImage.banner2,
              title1: "Internation Brand Music Consert 22",
              title2: "12-15 Oct 22",
              title3: "Mirpur Cricket Stadium Dhaka"),
        ],
      ),
    );
  }
}
