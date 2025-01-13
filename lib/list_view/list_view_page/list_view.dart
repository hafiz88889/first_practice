import 'package:first_practice/utils/image_custom_widget.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
          height: 150,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 200,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(MyImage.me),fit: BoxFit.cover)
                ),
              ),
              Container(
                height: 200,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(MyImage.me),fit: BoxFit.cover)
                ),
              ),
              Container(
                height: 200,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(MyImage.me),fit: BoxFit.cover)
                ),
              ),
              Container(
                height: 200,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(MyImage.me),fit: BoxFit.cover)
                ),
              ),
              Container(
                height: 200,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(MyImage.me),fit: BoxFit.cover)
                ),
              ),
              Container(
                height: 200,
                width: 100,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(MyImage.me),fit: BoxFit.cover)
                ),
              ),
            ],
          ),
        ),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
                  height: 150,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(MyImage.me),fit: BoxFit.cover)
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(MyImage.me),fit: BoxFit.cover)
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(MyImage.me),fit: BoxFit.cover)
                  ),
                ),
                Container(
                  height: 150,
                  width: 100,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(MyImage.me),fit: BoxFit.cover)
                  ),
                ),

              ],

            )
          )
      ]
      ),
    );
  }
}
