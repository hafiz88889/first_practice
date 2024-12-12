import 'package:flutter/material.dart';
import 'blog_page.dart';
import 'container_page.dart';
import 'package:first_practice/screen_page/doctor_home_page.dart';
import 'package:first_practice/screen_page/assignment_page_onepointziro.dart';
import 'package:first_practice/screen_page/assignment_page_one.dart';
class homeActivity extends StatefulWidget{
  const homeActivity({super.key});

  @override
  State<homeActivity> createState() => _homeActivityState();
}

class _homeActivityState extends State<homeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.blue,
        title: Text("This is app bar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontStyle: FontStyle.italic,
            letterSpacing: 1,
            fontFamily: "FontSecond",
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.email,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart",),
          BottomNavigationBarItem(icon: Icon(Icons.person_2,),label: "Profile"),

        ],
      ),
      body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 700,
            width: 500,
            color: Colors.white10,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
                          },
                          child: Container(
                            height: 40,
                              width: 200,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.yellow,
                                    blurRadius: 10,
                                  )
                                ],
                                color: Colors.deepPurpleAccent,
                              ),
                              child: Center(child: Text("Go Doctor Appoinment Page",style: TextStyle(color: Colors.white,fontFamily: "FontSecond",fontSize: 15,fontWeight: FontWeight.bold),)),
                              ),

                        ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BusPage()));
                        },
                        child: Container(
                          height: 40,
                          width: 200,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.yellow,
                                blurRadius: 10,
                              )
                            ],
                            color: Colors.deepPurpleAccent,
                          ),
                          child: Center(child: Text("Go Bus Bokking Page",style: TextStyle(color: Colors.white,fontFamily: "FontSecond",fontSize: 15,fontWeight: FontWeight.bold),)),

                          // child: Text(
                          //   "Test",style: TextStyle(fontFamily: "FontMain",fontSize: 80,color: Colors.blue,fontWeight: FontWeight.bold),)
                        ),

                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>messanger_page()));
                        },
                        child: Container(
                          height: 40,
                          width: 200,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.yellow,
                                blurRadius: 10,
                              )
                            ],
                            color: Colors.deepPurpleAccent,
                          ),
                          child: Center(child: Text("Go Massanger Page",style: TextStyle(color: Colors.white,fontFamily: "FontSecond",fontSize: 15,fontWeight: FontWeight.bold),)),

                          // child: Text(
                          //   "Test",style: TextStyle(fontFamily: "FontMain",fontSize: 80,color: Colors.blue,fontWeight: FontWeight.bold),)
                        ),

                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>blog_pageActivity()));
                        },
                        child: Container(
                          height: 40,
                          width: 200,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.yellow,
                                blurRadius: 10,
                              )
                            ],
                            color: Colors.deepPurpleAccent,
                          ),
                          child: Center(child: Text("Go Blog Page",style: TextStyle(color: Colors.white,fontFamily: "FontSecond",fontSize: 15,fontWeight: FontWeight.bold),)),

                          // child: Text(
                          //   "Test",style: TextStyle(fontFamily: "FontMain",fontSize: 80,color: Colors.blue,fontWeight: FontWeight.bold),)
                        ),

                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ContainerPageOne()));
                        },
                        child: Container(
                          height: 40,
                          width:200,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.yellow,
                                blurRadius: 10,
                              )
                            ],
                            color: Colors.deepPurpleAccent,
                          ),
                          child: Center(child: Text("Go Container page",style: TextStyle(color: Colors.white,fontFamily: "FontSecond",fontSize: 15,fontWeight: FontWeight.bold),)),

                          // child: Text(
                          //   "Test",style: TextStyle(fontFamily: "FontMain",fontSize: 80,color: Colors.blue,fontWeight: FontWeight.bold),)
                        ),

                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
      ),

    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
             padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              currentAccountPicture: Image.network("https://imgs.search.brave.com/Cn7cyXCzoAR4xcMUoRKzf_2iXHVrP3kn4zSwi-eImlM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY29udGVudHN0/YWNrLmlvL3YzL2Fz/c2V0cy9ibHRkZDk5/ZjI0ZThhOTRkNTM2/L2JsdGJjY2M2NzEw/ZWM1M2M5Y2MvNjc0/NzQwMjU0ZDdjNDM0/MzU1ZjYyODdkL2Jp/cnRoZGF5LWZsb3dl/cnMtc2lsby0xOTQy/MjktNDQweDQ0MC5q/cGc_YXV0bz13ZWJw",),
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
    );

  }
}