import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';
import 'package:my_practice/ui/screen/custommer_form_textfield/custommer_form/form_page.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        title: Text("Text Field",style: regularTextStyle16,),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.all(10),
            //padding: EdgeInsets.only(left: 10,bottom: 10),
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: MyColor.whiteColor,
              border: Border.all(color: MyColor.blackColor),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,size: 30,color: MyColor.blackColor,),
                hintText: "Search Here",hintStyle: regularTextStyle16,
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(MyColor.blueColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const FormPage()));
          }, child: Text("Submit",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),))
        ],
      ),
    );
  }
}
