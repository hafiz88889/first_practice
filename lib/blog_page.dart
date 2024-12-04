import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'utilis/text_style.dart';
import 'utilis/text.dart';
class blog_pageActivity extends StatelessWidget{
  const blog_pageActivity({super.key});

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
     appBar: AppBar(
       title: Center(
         child: Text("Detail",
           style: TextStyle(color: Colors.black,
               fontSize: 25,
               fontFamily:"FontSecond",
           fontWeight: FontWeight.bold),
         )
     ),
       backgroundColor: Colors.white10,

       actions: [
            IconButton(onPressed: (){

            }, icon: Icon(Icons.search)
            ),
       ],
     ),
     backgroundColor: Colors.white,
     drawer: Drawer(
       child: ListView(
         children: [
           DrawerHeader(
             padding: EdgeInsets.all(0),
             child: UserAccountsDrawerHeader(
                 currentAccountPicture: Image.network("https://imgs.search.brave.com/MZ0Wb249179mqXcBvWgsuiY2gUSZaTr1PV2pzmMZr78/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/cG5naXRlbS5jb20v/cGltZ3MvbS80MDQt/NDA0MjcxMF9jaXJj/bGUtcHJvZmlsZS1w/aWN0dXJlLXBuZy10/cmFuc3BhcmVudC1w/bmcucG5n",),
                 accountName: Text("Md Alam",
                   style: TextStyle(
                       fontFamily: "FontThird",
                       fontWeight:FontWeight.bold,
                       color: Colors.white,fontSize: 20),
                 ),
                 accountEmail: Text(
                   "info@gmail.com",
                   style: TextStyle(
                       fontFamily: "FontThird",
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                       fontSize: 15),
                 )

             ),
           ),
           ListTile(
             leading: Icon(
                 Icons.home
             ),
             title: Text(
               "Home",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
             ),
             onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>website()));
             },
           ),
           ListTile(
             leading: Icon(
               Icons.web,
             ),
             title: Text(
               "Website",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
             ),
             onTap: (){ },
           ),
           ListTile(
             leading: Icon(
               Icons.phone,
             ),
             title: Text(
               "Cell",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
             ),
             onTap: (){},
           ), ListTile(
             leading: Icon(
               Icons.content_copy,
             ),
             title: Text(
               "Blog",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
             ),
             onTap: (){ },
           ), ListTile(
             leading: Icon(
               Icons.contacts,
             ),
             title: Text(
               "Contact",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
             ),
             onTap: (){ },
           ), ListTile(
             leading: Icon(
               Icons.person,
             ),
             title: Text(
               "Profile",style: TextStyle(fontSize: 14,fontFamily: "FontThird"),
             ),
             onTap: (){ },
           ),
         ],
       ),
     ),
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.white,
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
         BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
       ],
     ),
     body: Column(
       children: [
         Column(
           children: [
             Container(
               height: 250,
               width: 400,
               margin: EdgeInsets.all(3),
               padding: EdgeInsets.all(2),
                 decoration: BoxDecoration(
                 ),
                 child: Image.network("https://imgs.search.brave.com/YRhpdUgX7ULZ73mGWP-LCXoqSzkVupKoBb08Rsc09wE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNDYz/Mzc4MTkxL3Bob3Rv/L3dvbWVuLWhhbmRi/YWcuanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPVVBcXVrV3N2/QjdYNU5sRm9SSXd3/UmhtUTFZOXJTelJN/cllRajBJbVB4aDA9"),
             ),
           ],
         ),
         Column(
           children: [
             Container(
               decoration: BoxDecoration(
                 color: Colors.white10,
                 border: Border(left: BorderSide(color: Colors.black,width: 3)),

                 borderRadius: BorderRadius.circular(5)
               ),
               width: 350,
                 child: RichText(text: TextSpan(
                   text: MyString.fristText,
                     style: regularTextStyle.copyWith(fontSize: 20,),
                   children: [
                     TextSpan(
                       text: MyString.secondText,
                       style: regularTextStyle.copyWith(fontSize: 16,color: Colors.red),
                     )
                   ]

                 )
                 ),
               ),
           ],
         ),
         Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 12, 5, 2),
              width: 350,
              decoration: BoxDecoration(
                border: Border(left: BorderSide(color: Colors.yellow)),

                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: RichText(text: TextSpan(
                text: "A",
                style: TextStyle(color: Colors.orange,fontWeight: FontWeight.w100,fontStyle: FontStyle.normal,fontSize: 60,),
                children: [
                  TextSpan(
                    text: MyString.thirdText,
                    style: regularTextStyle.copyWith(fontSize: 14,fontWeight: FontWeight.normal,fontFamily: "normal")

                  ),
                ],
              )
              ),
            )
          ],
         ),
       ],
     ),
     );
  }
  
}