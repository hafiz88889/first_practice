import 'package:food_cart/screen/food_home.dart';
import 'package:food_cart/utils/my_color.dart';
import 'package:flutter/material.dart';
import 'package:food_cart/utils/my_text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(
                top: 40,
                left: 10,
                right: 10,
              ),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Kamilklkn",
                        style: myTextStyle.copyWith(fontSize: 22),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Sncaktepe, istanbul",
                        style: myTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: MyColor.grayColor),
                      ),
                    ],
                  ),
                  const Image(
                    image: AssetImage("assets/images/K_image.png"),
                    height: 30,
                    width: 30,
                  ),
                ],
              ),
            ),
            // SizedBox(height: 15,),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: MyColor.whiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search By Resturent or food',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(
                    "Top Categories",
                    style: myTextStyle.copyWith(fontSize: 24),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const FoodHome()));
                    },
                      child:Center(child: Text("show all",style: myTextStyle.copyWith(fontSize: 15,color: MyColor.freeDeliveryBoxColor)),
                  ),
                                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: 88,
                          width: 88,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: MyColor.burgeboxColor,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/burgericon.svg",height: 1,width: 1,
                            colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn,),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Burgers",
                          style: myTextStyle.copyWith(fontSize: 17),
                        ),
                        Text(
                          "1126 Places",
                          style: myTextStyle.copyWith(
                              fontSize: 13, color: MyColor.grayColor,fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          height: 88,
                          width: 88,
                          // margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: MyColor.americal,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/american.svg",height: 1,width: 1,
                            colorFilter: ColorFilter.mode(
                              MyColor.whiteColor, BlendMode.srcIn,),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "American",
                          style: myTextStyle.copyWith(fontSize: 17),
                        ),
                        Text(
                          "142 Places",
                          style: myTextStyle.copyWith(
                              fontSize: 13, color: MyColor.grayColor,fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(20),
                            height: 88,
                            width: 88,
                            // margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: MyColor.pizzaColor),
                            child: SvgPicture.asset(
                              "assets/icons/pizzaicon.svg",
                              colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn,),
                            )),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Pizza",
                          style: myTextStyle.copyWith(fontSize: 17),
                        ),
                        Text(
                          "365 Places",
                          style: myTextStyle.copyWith(
                              fontSize: 13, color: MyColor.grayColor,fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(20),
                            height: 88,
                            width: 88,
                            // margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColor.burbean,
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/bbq.svg",width: 44,height: 41.50,
                              colorFilter: ColorFilter.mode(
                                MyColor.whiteColor, BlendMode.srcIn,),
                            )),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Barbeque",
                          style: myTextStyle.copyWith(fontSize: 17),
                        ),
                        Text(
                          "523 Places",
                          style: myTextStyle.copyWith(
                              fontSize: 13, color: MyColor.grayColor,fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near You",
                    style: myTextStyle.copyWith(fontSize: 24),
                  ),
                ],
              ),
            ),
            //scrollDirection: Axis.horizontal,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(12),
                    width: 200,
                    height: 340,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 250,
                          width: 200,
                          // margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/foodbanner.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Sandwich Tantuni",
                          style: myTextStyle.copyWith(fontSize: 17),
                        ),
                        Text(
                          "NK Tantuni Kadikay",
                          style: myTextStyle.copyWith(
                              fontSize: 13, color: MyColor.grayColor,fontWeight: FontWeight.w200),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: MyColor.rattingColor,
                            ),
                            Text(
                              "4.8",
                              style: myTextStyle.copyWith(
                                  color: MyColor.blackColor,fontSize: 16),
                            ),
                            Text(
                              "(233 ratings)",
                              style: myTextStyle.copyWith(
                                  color: MyColor.grayColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200),
                            ),
                            Container(
                              height: 18,
                              padding: const EdgeInsets.only(left: 5,right: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: MyColor.freeDeliveryBoxColor,
                              ),
                              child: Text(
                                "Free delivery",
                                style: myTextStyle.copyWith(
                                    fontSize: 10, color: MyColor.blackColor),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(12),
                    width: 200,
                    height: 340,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 250,
                            width: 200,
                            // margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/pizzabanner.jpg"),
                                fit: BoxFit.cover,
                              ),
                            )),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Pizza with salmon",
                          style: myTextStyle.copyWith(fontSize: 17),
                        ),
                        Text(
                          "Doninos Pizza, Sargazi",
                          style: myTextStyle.copyWith(
                              fontSize: 13, color: MyColor.grayColor,fontWeight: FontWeight.w200),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: MyColor.rattingColor,
                            ),
                            Text(
                              "4.8",
                              style: myTextStyle.copyWith(
                                  color: MyColor.blackColor,fontSize: 16),
                            ),
                            Text(
                              "(233 ratings)",
                              style: myTextStyle.copyWith(
                                  color: MyColor.grayColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w200),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 5,
                              ),
                              height: 18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: MyColor.freeDeliveryBoxColor,
                              ),
                              child: Text(
                                "Free delivery",
                                style: myTextStyle.copyWith(
                                    fontSize: 10, color: MyColor.blackColor),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discove New Places",
                    style: myTextStyle.copyWith(fontSize: 24),
                  ),
                  Text(
                    "Show all",
                    style: myTextStyle.copyWith(color: MyColor.blackColor,fontSize: 15),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.all(12),
                width: 402,
                height: 182,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 88,
                            width: 88,
                            // margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/pizzahat_logo.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: MyColor.blackColor,
                                    blurRadius: 4,
                                  )
                                ])),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Pizza Hut",
                          style: myTextStyle.copyWith(fontSize: 17),
                        ),
                        Text(
                          "33 Min",
                          style: myTextStyle.copyWith(
                              fontSize: 13, color: MyColor.grayColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 88,
                          width: 88,
                          // margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image:
                                    AssetImage("assets/images/nusret-et.png"),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: MyColor.blackColor,
                                  blurRadius: 4,
                                )
                              ]),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Nusret Et",
                          style: myTextStyle.copyWith(fontSize: 17),
                        ),
                        Text(
                          "35 Min",
                          style: myTextStyle.copyWith(
                              fontSize: 13, color: MyColor.grayColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 88,
                            width: 88,
                            // margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/Burger King Logo.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: MyColor.blackColor,
                                    blurRadius: 4,
                                  )
                                ])),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Burger King",
                          style: myTextStyle.copyWith(fontSize: 17),
                        ),
                        Text(
                          "36 Min",
                          style: myTextStyle.copyWith(
                              fontSize: 13, color: MyColor.grayColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 88,
                            width: 88,
                            // margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/devililogo.JPG"),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: MyColor.blackColor,
                                    blurRadius: 4,
                                  )
                                ])),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Develi",
                          style: myTextStyle.copyWith(fontSize: 17),
                        ),
                        Text(
                          "40 Min",
                          style: myTextStyle.copyWith(
                              fontSize: 13, color: MyColor.grayColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
