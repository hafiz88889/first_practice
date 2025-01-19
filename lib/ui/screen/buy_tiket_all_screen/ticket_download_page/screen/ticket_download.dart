import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/buy_tiket_all_screen/ticket_download_page/widget/text_widget.dart';
import 'package:flutter/material.dart';

class TicketDownload extends StatelessWidget {
  const TicketDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.backgroundColor,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: (){Navigator.pop(context);},
                child: Image(image: AssetImage(MyImage.backArrowIcon),color: MyColor.blackColor,height: 20,width: 20,)),
            const Spacer(),
            Text("Tickets",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const Spacer(),
            Image(image: AssetImage(MyImage.scanner),color: MyColor.eSeeAll,height: 25,width: 25,),
            const SizedBox(width: 10,),
            Image(image: AssetImage(MyImage.threeDotMenu),height: 25,width: 25,)
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(onPressed: (){},
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("DOWNLOAD IMAGE",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),),
                  const SizedBox(width: 10,),
                  Icon(Icons.file_download_outlined,color: MyColor.whiteColor,)
                ],
              )),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColor.eSeeAll,
              ),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 25),
                      padding: const EdgeInsets.all(10),
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage(MyImage.banner2),fit: BoxFit.cover),
                        border: Border.all(color: MyColor.whiteColor,width: 5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 25,bottom: 15),
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyColor.whiteColor,
                    ),
                    child: Column(
                      children: [
                        Text("International Brand Music Concert 2022",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
                       const Divider(height: 50,),
                        const TextWidget(title1: "Date", title2: "Time", title3: "October 25,2022", title4: "10:00 PM"),
                        const SizedBox(height: 20,),
                        const TextWidget(title1: "Venue", title2: "Seat", title3: "Army Stadium", title4: "05"),
                        const Divider(height: 50,),
                        Image(image: AssetImage(MyImage.barCode),height: 80,)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
