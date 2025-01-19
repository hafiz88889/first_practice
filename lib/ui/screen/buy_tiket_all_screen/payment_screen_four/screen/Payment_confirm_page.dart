import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:flutter/material.dart';

class PaymentConfirmPage extends StatelessWidget {
  const PaymentConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: (){Navigator.pop(context);},
                child: Image(image: AssetImage(MyImage.backArrowIcon),color: MyColor.blackColor,height: 20,width: 20,)),
            const Spacer(),
            Text("Payment",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const Spacer()
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
              onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentConfirmPage()));
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  )
              ),
              child: Text("CONFIRM",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Payment method",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 12,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: AssetImage(MyImage.visaCard),fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 15,),
            Text("Voucher",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: MyColor.backColor,
              ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("APPLIED VOUCHER CODE",style: regularTextStyle14.copyWith(color: MyColor.greyColor,fontSize: 10),),
                   const Icon(Icons.close,size: 20,)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Eventory25 ",style: regularTextStyle14.copyWith(color: MyColor.greyColor,fontSize: 16),),
                      const SizedBox(width: 8,),
                      SizedBox(
                        height: 30,
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(MyColor.eSeeAll),
                              shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)))
                            ),
                            onPressed: (){}, child: Text("25% off",style: regularTextStyle14.copyWith(color: MyColor.whiteColor,fontSize: 10))
                        ),
                      )
                    ],
                  ),
                ],
                
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
