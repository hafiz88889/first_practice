import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class DialougePage extends StatefulWidget {
  const DialougePage({super.key});

  @override
  State<DialougePage> createState() => _DialougePageState();
}

class _DialougePageState extends State<DialougePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "This is dialogue",
          style: regularTextStyle16.copyWith(color: MyColor.blackColor),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(MyColor.blackColor),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: MyColor.burgeboxColor,
                  title: Text(
                    "Are you subscribe this",
                    style:
                        regularTextStyle18.copyWith(color: MyColor.whiteColor),
                  ),
                  content: Text(
                    "This is noo more then and an we have an another channel to ensure and another pause ",
                    style:
                        regularTextStyle14.copyWith(color: MyColor.greenColor),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cencel",
                          style: TextStyle(color: MyColor.whiteColor),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Ok",
                          style: TextStyle(color: MyColor.whiteColor),
                        )),
                  ],
                ),
              );
            },
            child: Text(
              "show dialogue",
              style: regularTextStyle14.copyWith(color: MyColor.whiteColor),
            ),
          ),
          TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: MyColor.whiteColor,
                      ),
                    );
                    return Container(
                      height: 5,
                      width: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColor.redColor),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 150,
                              ),
                              Text("Are you sure you want buy product ",
                                  style: regularTextStyle18)
                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text("Go another Dialouge")),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(MyColor.burgeboxColor),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))
            ),
              onPressed: () {
             showModalBottomSheet(context: context, builder: (BuildContext context) {
               return Container(
                 height: 700,
                 width: double.infinity,
                 padding: const EdgeInsets.all(16.0),
                 decoration: BoxDecoration(
                   borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                   color: MyColor.greenColor
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const Text(
                       'Modal Bottom Sheet',
                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                     ),
                     const SizedBox(height: 8),
                     const Text('This is a modal bottom sheet example.'),
                     const SizedBox(height: 16),
                     ElevatedButton(
                       onPressed: () {
                         Navigator.pop(context);
                       },
                       child: const Text('Close'),
                     ),
                   ],
                 ),
               );
             },);
              },
              child: Text(
                "Show bottom sheet",
                style: regularTextStyle16.copyWith(color: MyColor.whiteColor),
              ))
        ],
      ),
    );
  }
}
