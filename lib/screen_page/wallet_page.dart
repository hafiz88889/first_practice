import 'package:first_practice/screen_page/widget/my_global_text_widget.dart';
import 'package:first_practice/utils/image_custom_widget.dart';
import 'package:first_practice/utils/my_color.dart';
import 'package:flutter/material.dart';
import 'package:first_practice/utils/text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: MyColor.greyColor,
                  ),
                  Text(
                    "Wallet",
                    style: regularTextStyle.copyWith(
                        color: MyColor.walletTextColor, fontSize: 30),
                  ),
                  Icon(
                    Icons.notifications,
                    color: MyColor.greyColor,
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(5),
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColor.cardColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Wallet Balance",
                      style: regularTextStyle.copyWith(
                          color: MyColor.whiteColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "1,504.21",
                      style: regularTextStyle.copyWith(
                          color: MyColor.whiteColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "EXPIRES",
                              style: regularTextStyle.copyWith(
                                  fontSize: 8,
                                  color: MyColor.whiteColor,
                                  fontWeight: FontWeight.w200),
                            ),
                            Text("03/22",
                                style: regularTextStyle.copyWith(
                                    fontSize: 15,
                                    color: MyColor.whiteColor,
                                    fontWeight: FontWeight.w400)),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text("SAMART SHARPY",
                                    style: regularTextStyle.copyWith(
                                        fontSize: 15,
                                        color: MyColor.whiteColor,
                                        fontWeight: FontWeight.w400)),
                                const SizedBox(
                                  width: 130,
                                ),
                                SvgPicture.asset(
                                  MyImage.visaIcon,
                                  height: 60,
                                  width: 10,
                                  color: MyColor.whiteColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.all(3)),
                  Container(
                    margin: const EdgeInsets.all(7),
                    height: 120,
                    width: 175,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: MyColor.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: MyColor.blackColor,
                            blurRadius: 1,
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //  Padding(padding: EdgeInsets.all(10)),
                        SvgPicture.asset(
                          MyImage.sendMoneyIcon,
                          height: 70,
                          width: 35,
                          color: MyColor.cardColor,
                        ),
                        Text(
                          "Send Money",
                          style: regularTextStyle.copyWith(
                              color: MyColor.cardColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 12,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(7),
                    height: 120,
                    width: 175,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: MyColor.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: MyColor.blackColor,
                            blurRadius: 1,
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //  Padding(padding: EdgeInsets.all(10)),
                        SvgPicture.asset(
                          MyImage.recivedMoneyIcon,
                          height: 70,
                          width: 35,
                          color: MyColor.cardColor,
                        ),
                        Text(
                          "Received Money",
                          style: regularTextStyle.copyWith(
                              color: MyColor.cardColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(7),
                    child: Text(
                      "Activity",
                      style: regularTextStyle.copyWith(
                          color: MyColor.activityTextColor, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: MyColor.boxShadowColor,
                        blurRadius: 50,
                      )
                    ],
                    color: MyColor.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    SvgPicture.asset(
                      MyImage.recivedMoneyIcon,
                      height: 50,
                      width: 35,
                      color: MyColor.cardColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Received Money",
                          style: regularTextStyle.copyWith(
                              color: MyColor.cardColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "From Susan Porter",
                          style: regularTextStyle.copyWith(
                              color: MyColor.greyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+200.00",
                          style: regularTextStyle.copyWith(
                              color: MyColor.recivedmoneyTextColor,
                              fontSize: 18),
                        ),
                        Text(
                          "10 min ago",
                          style: regularTextStyle.copyWith(
                              color: MyColor.greyColor, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: MyColor.boxShadowColor,
                        blurRadius: 50,
                      )
                    ],
                    color: MyColor.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    SvgPicture.asset(
                      MyImage.sendMoneyIcon,
                      height: 50,
                      width: 35,
                      color: MyColor.cardColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Send Money",
                          style: regularTextStyle.copyWith(
                              color: MyColor.cardColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "From Alexander",
                          style: regularTextStyle.copyWith(
                              color: MyColor.greyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+200.00",
                          style: regularTextStyle.copyWith(
                              color: MyColor.sendmoneyTextColor, fontSize: 18),
                        ),
                        Text(
                          "2 hrs ago",
                          style: regularTextStyle.copyWith(
                              color: MyColor.greyColor, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: MyColor.boxShadowColor,
                        blurRadius: 50,
                      )
                    ],
                    color: MyColor.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    SvgPicture.asset(
                      MyImage.sendMoneyIcon,
                      height: 50,
                      width: 35,
                      color: MyColor.cardColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Send Money",
                          style: regularTextStyle.copyWith(
                              color: MyColor.cardColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "From Alexander",
                          style: regularTextStyle.copyWith(
                              color: MyColor.greyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+200.00",
                          style: regularTextStyle.copyWith(
                              color: MyColor.sendmoneyTextColor, fontSize: 18),
                        ),
                        Text(
                          "2 hrs ago",
                          style: regularTextStyle.copyWith(
                              color: MyColor.greyColor, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: MyColor.boxShadowColor,
                        blurRadius: 50,
                      )
                    ],
                    color: MyColor.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(10)),
                    SvgPicture.asset(
                      MyImage.recivedMoneyIcon,
                      height: 50,
                      width: 35,
                      color: MyColor.cardColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Received Money",
                          style: regularTextStyle.copyWith(
                              color: MyColor.cardColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "From Susan Porter",
                          style: regularTextStyle.copyWith(
                              color: MyColor.greyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+200.00",
                          style: regularTextStyle.copyWith(
                              color: MyColor.recivedmoneyTextColor,
                              fontSize: 18),
                        ),
                        Text(
                          "10 min ago",
                          style: regularTextStyle.copyWith(
                              color: MyColor.greyColor, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
