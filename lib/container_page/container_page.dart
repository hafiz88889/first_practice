import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_practice/utilis/text_style.dart';
class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("This Container Page",style: regularTextStyle.copyWith(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child:  Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.yellow,
                      blurRadius: 10.0,
                    )
                  ]
                ),
              ),
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration:const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.redAccent,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    shape: BoxShape.rectangle,
                   borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigo,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),

            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 150,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),
              Container(
                child: Center(child: Text("Bag",style: regularTextStyle.copyWith(color: Colors.white,fontSize: 25))),
                height: 100,
                width: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        blurRadius: 10.0,
                      )
                    ]
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Profile"),

        ],
      ),
    );

  }
}
