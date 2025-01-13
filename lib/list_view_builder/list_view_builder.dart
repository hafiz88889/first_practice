import 'package:first_practice/utils/image_custom_widget.dart';
import 'package:first_practice/utils/my_color.dart';
import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
List<String> imageList=[
  "This is no more",
  "They have another",
  "They have another",

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view builder"),
        backgroundColor: MyColor.whiteColor,
      ),
      body:SizedBox(
      height:double.infinity,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              width: double.infinity,
              alignment: index % 2==0?Alignment.topRight:Alignment.topLeft,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                 color: index % 2==0? MyColor.greenColor:MyColor.redColor
              ),
              child: Text("${imageList[index]}"),
            );
          },
        ),
      ),
    );
  }
}
