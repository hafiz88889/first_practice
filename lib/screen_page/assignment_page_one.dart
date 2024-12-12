import 'package:flutter/material.dart';
import 'package:first_practice/utils/my_color.dart';
import 'package:first_practice/utils/text_style.dart';

class BusPage extends StatelessWidget {
  const BusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: MyColor.whiteColor)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person,color: MyColor.whiteColor,size: 35,)),
        ],
        backgroundColor: MyColor.purpleColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home",backgroundColor: MyColor.blackColor),
          BottomNavigationBarItem(icon: Icon(Icons.history),label: "History",backgroundColor: MyColor.blackColor),
          BottomNavigationBarItem(icon: Icon(Icons.timer),label: "Time",backgroundColor: MyColor.blackColor),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: MyColor.purpleColor,
                borderRadius:const BorderRadius.vertical(bottom: Radius.circular(120)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 130,),
                  Text("Hi_John",style: regularTextStyle.copyWith(fontSize: 18,color: MyColor.whiteColor,fontWeight: FontWeight.normal),),
                  Text("Bus",style: regularTextStyle.copyWith(fontSize: 26,color: MyColor.whiteColor),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 210,right: 20,left: 20),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    decoration:BoxDecoration(
                      color: MyColor.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: MyColor.blackColor,
                          blurRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 20,),
                            Text("From",style: regularTextStyle.copyWith(fontSize: 15,color: MyColor.greyColor),),
                            Text("Location 1",style: regularTextStyle.copyWith(fontSize: 18, color: MyColor.purpleColor),),
                           const SizedBox(
                              height: 30,
                            ),
                            const SizedBox(width: 20,),
                            Text("To",style: regularTextStyle.copyWith(fontSize: 15,color: MyColor.greyColor),),
                            Text("Location 2",style: regularTextStyle.copyWith(fontSize: 18,color: MyColor.purpleColor),),
                          ],
                        ),
                       Icon(Icons.swap_vert,size: 35,color: MyColor.purpleColor,),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 150,
                    decoration:BoxDecoration(
                      color: MyColor.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: MyColor.blackColor,
                          blurRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 20,),
                            Text("Passenger",style: regularTextStyle.copyWith(fontSize: 15,color: MyColor.greyColor),),
                            //Text("",style: regularTextStyle.copyWith(fontSize: 22, color: MyColor.purpleColor),),
                            const SizedBox(
                              height: 30,
                            ),
                            const SizedBox(width: 20,),
                            Text("Ongoing",style: regularTextStyle.copyWith(fontSize: 15,color: MyColor.greyColor),),
                            Text("Sun 3 Jun 2021",style: regularTextStyle.copyWith(fontSize: 18,color: MyColor.purpleColor),),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 30,),
                            Text("TYPE",style: regularTextStyle.copyWith(fontSize: 15,color: MyColor.greyColor),),
                            Text("TYPE",style: regularTextStyle.copyWith(fontSize: 18,color: MyColor.purpleColor),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: (){
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>BusPage()));
                      },
                      child: Container(
                        height: 70,
                        width: 200,
                        padding:const EdgeInsets.all(10),
                        margin:const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow:const [
                             BoxShadow(
                              color: Colors.yellow,
                              blurRadius: 10,
                            )
                          ],
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Center(child: Text("Search",style: regularTextStyle.copyWith(fontSize: 20,color: MyColor.whiteColor))),
                      ),

                    ),
                  ),
                ],

              ),
            )
      ],
      ),
    )
    );
  }
}