import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class ConsertPage extends StatefulWidget {
  const ConsertPage({super.key});

  @override
  State<ConsertPage> createState() => _ConsertPageState();
}

class _ConsertPageState extends State<ConsertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(MyImage.bigBanner),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 30,
                  top: 40,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.expand_circle_down_rounded,
                          color: MyColor.whiteColor,
                          size: 50,
                        ),
                      ),
                      SizedBox(
                        width: 250,
                      ),
                      Icon(
                        Icons.heart_broken,
                        color: MyColor.redColor,
                        size: 50,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 600,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Text(
                          "Shere Bangla Brand \nMusic Consert",
                          style: regularTextStyle18.copyWith(
                              color: MyColor.whiteColor, fontSize: 30),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: MyColor.eSeeAll,
                              size: 20,
                            ),
                            Text(
                              "ABC Avinue Dhaka,1212",
                              style: regularTextStyle14.copyWith(
                                  color: MyColor.whiteColor, fontSize: 12),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Image(
                              image: AssetImage(MyImage.dateIcon),
                              height: 20,
                              width: 20,
                              color: MyColor.whiteColor,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text("25-27 October 22",
                                style: regularTextStyle14.copyWith(fontSize: 12))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          //mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(MyImage.profile),
                                ),
                                Positioned(
                                  left: 15,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage: AssetImage(MyImage.profile),
                                  ),
                                ),
                                Positioned(
                                  left: 28,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage: AssetImage(MyImage.profile),
                                  ),
                                ),
                                Positioned(
                                  left: 43,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage: AssetImage(MyImage.profile),
                                  ),
                                ),
                                Positioned(
                                  left: 57,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: MyColor.eSeeAll,
                                    child: Text(
                                      "5K+",
                                      style: regularTextStyle14.copyWith(
                                          fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Text(
                              "15.7k+ Members are joined",
                              style: regularTextStyle14.copyWith(fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: 350,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: WidgetStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(10))),
                                  backgroundColor: WidgetStateProperty.all(MyColor.eSeeAll)
                              ),
                              onPressed: () {},
                              child: Text(
                                "CHOICE YOUR SEAT",
                                style: regularTextStyle16.copyWith(color: MyColor.whiteColor),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
