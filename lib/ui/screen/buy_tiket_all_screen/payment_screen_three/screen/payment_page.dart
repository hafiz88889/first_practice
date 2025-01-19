import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/buy_tiket_all_screen/payment_screen_four/screen/Payment_confirm_page.dart';
import 'package:event/ui/screen/buy_tiket_all_screen/payment_screen_three/widget/bottom_sheet_text_field_widget.dart';
import 'package:event/ui/screen/buy_tiket_all_screen/payment_screen_three/widget/pay_widget.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}
int _value=0;
class _PaymentPageState extends State<PaymentPage> {
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
            Text("Payment",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            Image(image: AssetImage(MyImage.scanner),color: MyColor.eSeeAll,height: 25,width: 25,)
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
              onPressed: (){
                showModalBottomSheet(
                  backgroundColor: MyColor.eSeeAll,
                    context: context,
                    builder: (BuildContext contex){
                      return Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          children: [
                            Text("widget.title",style: regularTextStyle18.copyWith(color: MyColor.whiteColor),),
                            const SizedBox(height: 10,),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: MyColor.whiteColor)),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: MyColor.whiteColor)),
                                    filled: true,
                                    fillColor: MyColor.normalOrange,
                                    hintText:" widget.title2",hintStyle: regularTextStyle16.copyWith(color: MyColor.whiteColor)
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentConfirmPage()));
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  )
              ),
              child: Text("CHECKOUT",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment Method",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
                Text("Add New Card",style: regularTextStyle14.copyWith(color: MyColor.eSeeAll),),
              ],
            ),
            const SizedBox(height: 15,),
            PayWidget(title: "Apple Pay", image: MyImage.apple,value: 1,),
            const SizedBox(height: 10,),
            PayWidget(title: "Paypal", image: MyImage.paypal,value: 2,),
            const SizedBox(height: 10,),
            PayWidget(title: "Google Pay", image: MyImage.google,value: 3,),
            const SizedBox(height: 10,),
            Row(
              children: [
                Radio(
                    activeColor: MyColor.eSeeAll,
                    value: 0,
                    groupValue: _value,
                    onChanged: (value){
                      setState(() {
                        _value=value!;
                      });
                    }),
                Text("Pay by Debit/ Credit Card",style: regularTextStyle14.copyWith(color: MyColor.blackColor),)
              ],
            ),
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.greyColor.withAlpha(70))),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image(image: AssetImage(MyImage.masterCard),height: 20,width: 35,),
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(color: MyColor.greyColor.withAlpha(20)),borderRadius: BorderRadius.circular(12)),
                  hintText: "....  ....  .... 0231",hintStyle: regularTextStyle14.copyWith(color: MyColor.greyColor)
              ),
            ),
            const SizedBox(height: 25,),
            Text("Add Voucer",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: MyColor.greyColor.withAlpha(50))),
                  border: OutlineInputBorder(borderSide: BorderSide(color: MyColor.greyColor.withAlpha(50),),borderRadius: BorderRadius.circular(12)),
                  hintText: "VOUCER CODE",hintStyle: regularTextStyle14.copyWith(color: MyColor.greyColor),
                suffixIcon: SizedBox(
                  height: 55,
                  child: ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
                      ),
                      child: Text("APPLY",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),)),
                ),
              ),
              
            ),
          ],
        ),
      ),
      ),
    );
  }
}
