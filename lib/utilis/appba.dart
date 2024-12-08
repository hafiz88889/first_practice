import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appbar extends StatefulWidget {
  const appbar({super.key});

  @override
  State<appbar> createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Well Come To our Doctor Service",style: TextStyle(
         fontSize: 15,
       ),),
      ),
    );
  }
}
