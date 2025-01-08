import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class PasswordFieldWidget extends StatefulWidget {
  final String title;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  const PasswordFieldWidget({super.key,
  required this.title,
  required this.icon1,
  required this.icon2,
  required this.icon3,
  });

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColor.greenColor),
            borderRadius: BorderRadius.circular(15)
          ),
            prefixIcon: Icon(
              widget.icon1,
              color: MyColor.searchText,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? widget.icon2: widget.icon3
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: MyColor.searchText)),
            hintText: widget.title,
            hintStyle:
            regularTextStyle14.copyWith(color: MyColor.searchText)),
      ),
    );
  }
}
