import 'package:flutter/material.dart ';
import 'package:food_cart/screen/food_delivery_app.dart';
import 'package:food_cart/utils/my_color.dart';
import 'package:food_cart/utils/my_image.dart';
import 'package:food_cart/utils/my_text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodHome extends StatelessWidget {
  const FoodHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  InkWell(
          onTap: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context)=>FoodDelivery()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           const SizedBox(
              height: 0,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
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
                  hintText: 'Search By restaurant or food',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.only(left: 10, right: 10, top: 25),
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Search",
                    style: myTextStyle.copyWith(fontSize: 22),
                  ),
                  Text(
                    "Clear all",
                    style: myTextStyle.copyWith(
                        fontSize: 16, color: MyColor.freeDeliveryBoxColor),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 180,
                  width: 165,
                  margin:const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 165,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(MyImage.dolmaWithRice)),
                        ),
                      ),
                      Text(
                        "Dolma With Rice",
                        style: myTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        "Bayramoğlu Döner, Rüzgarlıbahçe",
                        maxLines: 1,
                        style: myTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: MyColor.smallText),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  width: 165,
                  margin:const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 165,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(MyImage.rolledBorek)),
                        ),
                      ),
                      Text(
                        "Rolled Borek",
                        style: myTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        "Sarıyer Börekçisi, Kartal",
                        maxLines: 1,
                        style: myTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: MyColor.smallText),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin:const EdgeInsets.only(left: 10, top: 15),
                  child: Text(
                    "Recommend for you",
                    style: myTextStyle.copyWith(fontSize: 22),
                  ),
                ),
              ],
            ),

            Foodrecommendforyou_global_widget(title: "Pumpkin Hummus",AssetImage: AssetImage(MyImage.pumpkinHummus,),smallText: "Beyti Restaurant, Taksim"),
            Foodrecommendforyou_global_widget(title: "Sweets Baklava with Nuts",AssetImage: AssetImage(MyImage.sweetsBaklava), smallText: "Karaköy Güllüoğlu, Beyoğlu"),
            Foodrecommendforyou_global_widget(title: "Fish",AssetImage: AssetImage(MyImage.fishImage),smallText: "Mercan, Kadıköy"),
            Foodrecommendforyou_global_widget(title: "Sweets Baklava with Nuts",AssetImage: AssetImage(MyImage.sweetsBaklava), smallText: "Karaköy Güllüoğlu, Beyoğlu"),
            Foodrecommendforyou_global_widget(title: "Pumpkin Hummus",AssetImage: AssetImage(MyImage.pumpkinHummus,),smallText: "Beyti Restaurant, Taksim"),
            Foodrecommendforyou_global_widget(title: "Fish",AssetImage: AssetImage(MyImage.fishImage),smallText: "Mercan, Kadıköy"),
            Foodrecommendforyou_global_widget(title: "Sweets Baklava with Nuts",AssetImage: AssetImage(MyImage.sweetsBaklava), smallText: "Karaköy Güllüoğlu, Beyoğlu"),

          ],
        ),
      ),
    );
  }
  Widget Foodrecommendforyou_global_widget({required String title,required AssetImage, required String smallText}){
    return Row(
      children: [
        Container(
          margin:const EdgeInsets.all(10),
          height: 88,
          width: 88,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: AssetImage),
          ),
        ),
        Container(
          margin:const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: myTextStyle.copyWith(fontSize: 17),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                smallText,
                style: myTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: MyColor.smallText),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: MyColor.freeDeliveryBoxColor,
                  ),
                  Text(
                    "4.8",
                    style: myTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "(233 ratings)",
                    style: myTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: MyColor.smallText),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );

  }
}
