import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class FormFieldWidget extends StatefulWidget {
  final String title;
  final IconData icon;
  const FormFieldWidget({super.key,
  required this.title,
    required this.icon,
  });

  @override
  State<FormFieldWidget> createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: MyColor.greenColor)
          ),
            prefixIcon: Icon(
              widget.icon,
              color: MyColor.searchText,
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
