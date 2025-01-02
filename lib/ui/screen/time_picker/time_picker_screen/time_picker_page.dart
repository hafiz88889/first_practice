import 'package:flutter/material.dart';
import 'package:my_practice/config/utils/my_color.dart';
import 'package:my_practice/config/utils/text_style.dart';

class TimePicker extends StatelessWidget {
   const TimePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Time Picker",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TimePickerExample(),
    );
  }
}

class TimePickerExample extends StatefulWidget {
  @override
  _TimePickerExampleState createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  TimeOfDay? _selectedTime;

  Future<void> _pickTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Picker',style: regularTextStyle16,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _selectedTime != null
                  ? 'Selected Time: ${_selectedTime!.format(context)}'
                  : 'No Time Selected',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(MyColor.greenColor)
              ),
              onPressed: () => _pickTime(context),
              child: Text('Set Time',style: regularTextStyle14.copyWith(color: MyColor.whiteColor),),
            ),
          ],
        ),
      ),
    );
  }
}
