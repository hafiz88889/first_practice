import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';
import 'package:my_practice/ui/screen/time_picker/time_picker_screen/time_picker_page.dart';

class DatePickerPage extends StatefulWidget {
  const DatePickerPage({super.key});

  @override
  State<DatePickerPage> createState() => _DatePickerPageState();
}
DateTime _dateTime =DateTime.now();
class _DatePickerPageState extends State<DatePickerPage> {
  void _showDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100)
    ).then((value){
      setState(() {
       _dateTime =value!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Set Date",
        style: regularTextStyle16,
      )),
      body: Column(
        children: [
          Text(_dateTime.toString()),
          MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: MyColor.blueColor,
            onPressed: _showDatePicker,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text("Choice date",style: regularTextStyle14.copyWith(color: MyColor.whiteColor),),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(MyColor.blueColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
              ),
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const TimePicker()));
          }, child: Text("Go Time picker",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),))
        ],
      ),
    );
  }
}