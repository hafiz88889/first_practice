import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/ui/screen/event_screen/widget/card_widget.dart';
import 'package:event/ui/screen/wish_list_screen/screen_page/wish_list_page.dart';
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
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const WishListPage()));
            },
            child: LongCard(
                image: MyImage.banner,
                title1: "Internation Brand Music Consert 22",
                title2: "12-15 Oct 22",
                title3: "Mirpur Cricket Stadium Dhaka"),
          ),
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
