import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/create_event_screen/widget/event_details_widget.dart';
import 'package:event/ui/screen/create_event_screen/widget/row_card.dart';
import 'package:flutter/material.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        backgroundColor: MyColor.backgroundColor,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image(
                image: AssetImage(MyImage.backArrowIcon),
                color: MyColor.softBlackColor,
                width: 20,
                height: 20,
              ),
            ),
            const Spacer(),
            Text(
              "Create Event",
              style: regularTextStyle18.copyWith(color: MyColor.blackColor),
            ),
            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 60,
          child: ElevatedButton(onPressed: (){},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              ),
              child: Text("PUBLISH NOW",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(21),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: MyColor.softOrangeColor.withAlpha(50),
                    border: Border.all(color: MyColor.eSeeAll.withAlpha(150))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: MyColor.eSeeAll,
                      size: 40,
                    ),
                    Text(
                      "Add cover photo",
                      style:
                          regularTextStyle14.copyWith(color: MyColor.greyColor),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RowCard(),
                    RowCard(),
                    RowCard(),
                    RowCard(),
                    RowCard(),
                    RowCard(),
                    RowCard(),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              const Divider(),
              Text("Event Details",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
              const SizedBox(height: 20,),
              EventDetails(
                  title1: "Event Name",
                  title2: "Type your event name",
                  icon: Text("")),
              const SizedBox(
                height: 15,
              ),
              EventDetails(
                  title1: "Event Type",
                  title2: "Choice your event type",
                  icon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage(MyImage.love),
                      color: MyColor.greyColor,
                      height: 20,
                      width: 20,
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              EventDetails(
                  title1: "Select Date and Time",
                  title2: "Select Date",
                  icon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(image: AssetImage(MyImage.dateIcon),color: MyColor.greyColor,height: 20,width: 20,),
                  )),
              const SizedBox(
                height: 15,
              ),
              EventDetails(
                  title1: "Event Description",
                  title2: "Type Event Description",
                  icon: Text("")),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
