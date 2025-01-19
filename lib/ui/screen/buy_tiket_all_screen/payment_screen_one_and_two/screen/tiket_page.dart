import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/buy_tiket_all_screen/payment_screen_three/screen/payment_page.dart';
import 'package:flutter/material.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  bool isCheck=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColor.backgroundColor,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: (){Navigator.pop(context);},
                child: Image(image: AssetImage(MyImage.backArrowIcon),color: MyColor.blackColor,height: 20,width: 20,)),
            Text("Ticket",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            Image(image: AssetImage(MyImage.threeDotMenu),color: MyColor.blackColor,height: 20,width: 20,)
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 60,
          child: ElevatedButton(onPressed: (){
            showModalBottomSheet(
                context: context,
               isScrollControlled: true,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                builder: (BuildContext context){
                  return Padding(
                    padding: EdgeInsets.only(top: 16,left: 16,right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Center(
                          child: Container(
                            height: 5,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColor.greyColor.withAlpha(100)
                            ),
                          ),
                        ),
                        const SizedBox(height: 40,),
                        Text("Stay safe, be safe",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
                        const SizedBox(height: 12,),
                        Container(
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage(MyImage.covid),fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Text("Covid- 19 Self Health Declaration",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
                        const SizedBox(height: 15,),
                        Text("Enjoy you favorite dishe and a lovely your friend\nand family and hava a greate time Food local\nfood trucks....",style: regularTextStyle14.copyWith(color: MyColor.greyColor),),
                        const SizedBox(height: 25,),
                        Row(
                          children: [
                            SizedBox(
                              height: 10,
                              width: 10,
                              child: CircleAvatar(
                                backgroundColor: MyColor.greyColor,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Text("Enjoy you favorite dishe and a lovely your\n friend and family and hava a",style: regularTextStyle14.copyWith(color: MyColor.greyColor)),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(
                              height: 10,
                              width: 10,
                              child: CircleAvatar(
                                backgroundColor: MyColor.greyColor,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Text("Enjoy you favorite dishe and a lovely your\n friend and family and hava a",style: regularTextStyle14.copyWith(color: MyColor.greyColor)),
                          ],
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          children: [
                            Checkbox(
                                value: isCheck,
                                onChanged: (bool? value){
                                  setState(() {
                                    isCheck=value??false;
                                  });
                                },
                              activeColor: MyColor.eSeeAll,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                ),
                            Text("I confirm that i am healthy",style: regularTextStyle16.copyWith(color: MyColor.blackColor),)
                          ],
                        ),
                        const SizedBox(height: 150,),
                        Center(
                          child: SizedBox(
                            height: 60,
                            width: 350,
                            child: ElevatedButton(
                                onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentPage()));
                            },
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                                  shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                  )
                                ),
                                child: Text("Continue",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),)),
                          ),
                        )
                      ],
                    ),
                  );
                }
            );

          },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(MyColor.eTopBackColor),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
              ),
              child: Text("Continue",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
         child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ticket Type",style: regularTextStyle18.copyWith(color: MyColor.blackColor)),
            const SizedBox(height: 15,),
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: MyColor.eSeeAll,
                        ),
                        child: Center(child: Text("VIP",style: regularTextStyle16.copyWith(color: MyColor.whiteColor),)),
                      ),
                    ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: MyColor.softOrangeColor
                    ),
                    child: Center(child: Text("Economy",style: regularTextStyle16.copyWith(color: MyColor.eSeeAll),)),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15,),
            Text("Seat",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: MyColor.greyColor.withAlpha(80))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.greyColor.withAlpha(50),
                      ),
                      child: IconButton(onPressed: (){}, icon:  Icon(Icons.remove,color: MyColor.eSeeAll,size: 35,),)
                    ),
                    Text("05",style: regularTextStyle18.copyWith(color: MyColor.softBlackColor),),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: MyColor.greyColor.withAlpha(50),
                      ),
                      child: IconButton(onPressed: (){}, icon:  Icon(Icons.add,color: MyColor.eSeeAll,size: 35,),)
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Text("Ticket Price",style: regularTextStyle18.copyWith(color: MyColor.blackColor),),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("VIP Ticket",style: regularTextStyle14.copyWith(color: MyColor.greyColor),),
                Text("\$50 USD",style: regularTextStyle14.copyWith(color: MyColor.greyColor),),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("5 X \$50 USD",style: regularTextStyle14.copyWith(color: MyColor.greyColor),),
              ],
            ),
            const Divider(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Price",style: regularTextStyle16.copyWith(color: MyColor.softBlackColor),),
                Text("\$250 USD",style: regularTextStyle16.copyWith(color: MyColor.softBlackColor),),
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}
