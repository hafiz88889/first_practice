import 'package:flutter/material.dart';
import 'package:first_practice/screen_page/widget/my_global_text_widget.dart';
class RowClass extends StatelessWidget {
  const RowClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const globalWidgetText(
          params: "This is Row App bar",
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.search,color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
        child:
      Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Column(
              children: [
                SizedBox(

                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      globalWidgetText(
                        params: "First Text",
                      ),
                      //SizedBox(width: 10,),
                      widget2(
                        params: "second Text",
                      ),
                      Icon(Icons.settings,size: 30,color: Colors.white,)
                    ],
                  ),
                )

              ],
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(1),
            margin:const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    globalWidgetText(
                      params: "First Text",
                    ),
                    //SizedBox(width: 10,),
                    widget2(
                      params: "second Text",
                    ),
                    Icon(Icons.settings,size: 30,color: Colors.white,)
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(1),
            margin:const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [
                    globalWidgetText(
                      params: "First Text",
                    ),
                    //SizedBox(width: 10,),
                    widget2(
                      params: "second Text",
                    ),
                    Icon(Icons.home,size: 30,color: Colors.white,)
                  ],
                )

              ],
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(1),
            margin:const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: [
                    globalWidgetText(
                      params: "First Text",
                    ),
                    //SizedBox(width: 10,),
                    widget2(
                      params: "আমাদের দেশের নাম বাংলাদেশ",
                    ),
                    Icon(Icons.person,size: 30,color: Colors.white,)
                  ],
                )

              ],
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: [
                    globalWidgetText(
                      params: "First Text",
                    ),
                    //SizedBox(width: 10,),
                    widget2(
                      params: "second Text",
                    ),
                    Icon(Icons.settings,size: 30,color: Colors.white,)
                  ],
                )

              ],
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            padding:const EdgeInsets.all(1),
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    globalWidgetText(
                      params: "First Text",
                    ),
                    //SizedBox(width: 10,),
                    widget2(
                      params: "second Text",
                    ),
                    Icon(Icons.settings,size: 30,color: Colors.white,)
                  ],
                )

              ],
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            padding:const EdgeInsets.all(1),
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    globalWidgetText(
                      params: "First Text",
                    ),
                    //SizedBox(width: 10,),
                    widget2(
                      params: "second Text",
                    ),
                    Icon(Icons.settings,size: 30,color: Colors.white,)
                  ],
                )

              ],
            ),
          ),
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            padding:const EdgeInsets.all(1),
            margin: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    globalWidgetText(
                      params: "First Text",
                    ),
                    //SizedBox(width: 10,),
                    widget2(
                      params: "second Text",
                    ),
                    Icon(Icons.settings,size: 30,color: Colors.white,)
                  ],
                )

              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
