import 'package:flutter/material.dart';
import 'package:first_practice/utilis/my_color.dart';
import 'package:first_practice/utilis/text_style.dart';
import 'package:first_practice/screen_page/assignment_page_onepointziro.dart';

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
        backgroundColor: MyColor.blueColor,
      ),
      body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             height: 350,
             width: MediaQuery.of(context).size.width,

            // padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: MyColor.blueColor,
               borderRadius:const BorderRadius.vertical(bottom: Radius.circular(70)),
             ),
             child:  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [const
                 SizedBox(height: 80,),
                 Text("Hi John",style: regularTextStyle.copyWith(fontSize: 20,color: MyColor.whiteColor,fontWeight: FontWeight.normal),),
                 Text("Bus",style:regularTextStyle.copyWith(fontSize: 35,color: MyColor.whiteColor) ,)
               ],
             ),

           ),
           Container(
             child: Card(
               elevation: 5,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15),
               ),
               child: Padding(padding: const EdgeInsets.all(15),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     ListTile(
                       leading: Icon(Icons.location_on,color: MyColor.greenColor,),
                       subtitle: const Text("From"),
                       title: Text("Location 1",style: regularTextStyle.copyWith(fontSize: 20),),
                     ),
                     ListTile(
                       leading: Icon(Icons.location_on,color: MyColor.redColor,),
                       subtitle: const Text("To"),
                       title: Text("Location 1",style: regularTextStyle.copyWith(fontSize: 20),),
                       trailing: const Icon(Icons.swap_vert),
                     ),

                   ],
                 ),
               ),

             ),
           ),
           Container(
             child: Card(
               elevation: 5,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15),
               ),
               child: Padding(padding: const EdgeInsets.all(15),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     ListTile(
                       leading: Icon(Icons.circle,color: MyColor.greenColor,),
                       subtitle:const Text("Passenger"),
                       title: Text("01",style: regularTextStyle.copyWith(fontSize: 20),),
                     ),
                     ListTile(
                       leading: Icon(Icons.circle,color: MyColor.redColor,),
                       subtitle: const Text("Date"),
                       title: Text("Sun 3 Jun 2021",style: regularTextStyle.copyWith(fontSize: 20),),
                     ),
                   ],
                 ),
               ),
             ),
           ),
           Container(
             padding:const EdgeInsets.all(2),
             child: InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>messanger_page()));
               },
               child: Container(
                 height: 60,
                 width: 200,
                 padding:const EdgeInsets.all(10),
                 margin:const EdgeInsets.all(5),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                   color: Colors.deepPurpleAccent,
                 ),
                 child: Center(child: Text("Search",style: regularTextStyle.copyWith(fontSize: 20,color: MyColor.whiteColor))),

                 // child: Text(
                 //   "Test",style: TextStyle(fontFamily: "FontMain",fontSize: 80,color: Colors.blue,fontWeight: FontWeight.bold),)
               ),

             ),
           ),
         ],
       ),
      ),
    );
  }
}
