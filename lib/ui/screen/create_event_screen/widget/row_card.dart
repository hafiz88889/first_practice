import 'package:event/config/utils/my_color.dart';
import 'package:flutter/material.dart';

class RowCard extends StatelessWidget {
  const RowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: MyColor.softOrangeColor.withAlpha(50),
          border: Border.all(color: MyColor.eSeeAll.withAlpha(150))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add,color: MyColor.eSeeAll,size: 30,),
        ],
      ),
    );
  }
}
