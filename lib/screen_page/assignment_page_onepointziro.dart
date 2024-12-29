import 'package:first_practice/utils/my_color.dart';
import 'package:flutter/material.dart';
import 'package:first_practice/utils/text_style.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_practice/utils/image_custom_widget.dart';
import 'package:first_practice/utils/text.dart';

class messanger_page extends StatefulWidget {
  const messanger_page({super.key});

  @override
  State<messanger_page> createState() => _messanger_pageState();
}

class _messanger_pageState extends State<messanger_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      body: SingleChildScrollView(
        child:
      Column(
        children: [
          Container(
            margin: const EdgeInsets.all(25),
            width: MediaQuery.of(context).size.width,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Welcome back!",style: textType.copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
                    IconButton(onPressed: (){},
                        icon: const Icon(Icons.search)
                    ),
                  ],
                ),
            ),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding:const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.orangeColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,size: 40,color: MyColor.whiteColor,),
                          Text("Find People",style: regularTextStyle.copyWith(color: MyColor.whiteColor),),
                        ],
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.orangeColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email,size: 40,color: MyColor.whiteColor,),
                          Text("Invite friend",style: regularTextStyle.copyWith(color: MyColor.whiteColor),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.orangeColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.people,size: 40,color: MyColor.whiteColor,),
                          Text("Join People",style: regularTextStyle.copyWith(color: MyColor.whiteColor),),
                        ],
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.orangeColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,size: 40,color: MyColor.whiteColor,),
                          Text("Find People",style: regularTextStyle.copyWith(color: MyColor.whiteColor),),
                        ],
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.orangeColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person,size: 40,color: MyColor.whiteColor,),
                          Text("Find People",style: regularTextStyle.copyWith(color: MyColor.whiteColor),),
                        ],
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),

          Column(
            children: [
              Card(
                color: MyColor.whiteColor,
                child: ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: AssetImage(MyImage.myImage8),
                  ),
                  title: Text(MyString.sevethText,style: doctorExpert.copyWith(fontSize: 16),),
                  subtitle:  Text(MyString.eithtText),
                  trailing: Text(MyString.sixthText,style: regularTextStyle,),
                ),
              ),
              Card(
                color: MyColor.whiteColor,
                child: ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: AssetImage(MyImage.myImage8),
                  ),
                  title: Text(MyString.sevethText,style: doctorExpert.copyWith(fontSize: 16),),
                  subtitle:  Text(MyString.eithtText),
                  trailing: Text(MyString.sixthText,style: regularTextStyle,),
                ),
              ),
              Card(
                color: MyColor.whiteColor,
                child: ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: AssetImage(MyImage.myImage8),
                  ),
                  title: Text(MyString.sevethText,style: doctorExpert.copyWith(fontSize: 16),),
                  subtitle:  Text(MyString.eithtText),
                  trailing: Text(MyString.sixthText,style: regularTextStyle,),
                ),

              ),
              Card(
                color: MyColor.whiteColor,
                child: ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: AssetImage(MyImage.myImage8),
                  ),
                  title: Text(MyString.sevethText,style: doctorExpert.copyWith(fontSize: 16),),
                  subtitle:  Text(MyString.eithtText),
                  trailing: Text(MyString.sixthText,style: regularTextStyle,),
                ),
              ),
              Card(
                color: MyColor.whiteColor,
                child: ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: AssetImage(MyImage.myImage8),
                  ),
                  title: Text(MyString.sevethText,style: doctorExpert.copyWith(fontSize: 16),),
                  subtitle:  Text(MyString.eithtText),
                  trailing: Text(MyString.sixthText,style: regularTextStyle,),
                ),
              ),
              Card(
                color: MyColor.whiteColor,
                child: ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: AssetImage(MyImage.myImage8),
                  ),
                  title: Text(MyString.sevethText,style: doctorExpert.copyWith(fontSize: 16),),
                  subtitle:  Text(MyString.eithtText),
                  trailing: Text(MyString.sixthText,style: regularTextStyle,),
                ),
              ),
              Card(
                color: MyColor.whiteColor,
                child: ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: AssetImage(MyImage.myImage8),
                  ),
                  title: Text(MyString.sevethText,style: doctorExpert.copyWith(fontSize: 16),),
                  subtitle:  Text(MyString.eithtText),
                  trailing: Text(MyString.sixthText,style: regularTextStyle,),
                ),
              ),
              Card(
                color: MyColor.whiteColor,
                child: ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: AssetImage(MyImage.myImage8),
                  ),
                  title: Text(MyString.sevethText,style: doctorExpert.copyWith(fontSize: 16),),
                  subtitle:  Text(MyString.eithtText),
                  trailing: Text(MyString.sixthText,style: regularTextStyle,),
                ),
              ),
              Card(
                color: MyColor.whiteColor,
                child: ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: AssetImage(MyImage.myImage8),
                  ),
                  title: Text(MyString.sevethText,style: doctorExpert.copyWith(fontSize: 16),),
                  subtitle:  Text(MyString.eithtText),
                  trailing: Text(MyString.sixthText,style: regularTextStyle,),
                ),
              ),


            ],
          ),
        ],
      ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: MyColor.blueColor,
        items:const [
          Icon(Icons.home,size: 30,),
          Icon(Icons.shopping_cart,size: 30,),
          Icon(Icons.message,size: 30,),
          Icon(Icons.location_on_outlined,size: 30,),
          Icon(Icons.menu,size: 30,),
        ],
      ),


    );
  }
}
