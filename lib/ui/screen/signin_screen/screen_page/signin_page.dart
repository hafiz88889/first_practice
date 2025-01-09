import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/home_sceen/screen_page/home_page.dart';
import 'package:event/ui/screen/registation_screen/screen_page/reg_page.dart';
import 'package:event/ui/screen/registation_screen/widget/bottom_card_widget.dart';
import 'package:event/ui/screen/registation_screen/widget/form_field_widget.dart';
import 'package:event/ui/screen/registation_screen/widget/password_field_widget.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.whiteColor,
      appBar: AppBar(
        backgroundColor: MyColor.whiteColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 30,
                color: MyColor.blackColor,
              ),
            ),
            const Spacer(),
            Text(
              "Sign in",
              style: regularTextStyle18.copyWith(color: MyColor.eTopBackColor),
            ),
            const Spacer(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text("Give creadential to sing in your account",
                  style: regularTextStyle14.copyWith(color: MyColor.searchText)),
            ),
            const SizedBox(
              height: 40,
            ),
            const FormFieldWidget(title: "Type your email", icon: Icons.email),
            const PasswordFieldWidget(
                title: "Type your password",
                icon1: Icons.lock,
                icon2: Icons.visibility_off,
                icon3: Icons.visibility),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Switch(
                    activeColor: MyColor.eSeeAll,
                    thumbColor: WidgetStateProperty.all(MyColor.whiteColor),
                    value: isSwitch,
                    onChanged: (value) {
                      setState(() {
                        isSwitch = value;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Remember Me",
                    style: regularTextStyle14.copyWith(color: MyColor.searchText),
                  ),
                  const Spacer(),
                  Text(
                    "Forget Password?",
                    style: regularTextStyle14.copyWith(color: MyColor.eSeeAll),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        WidgetStateProperty.all(MyColor.eTopBackColor),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                    },
                    child: Text(
                      "Sign in",
                      style:
                      regularTextStyle16.copyWith(color: MyColor.whiteColor),
                    )),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                  ),
                  height: 1,
                  width: 110,
                  color: MyColor.searchText,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "or continue with",
                  style:
                  regularTextStyle14.copyWith(color: MyColor.searchText),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  height: 1,
                  width: 110,
                  color: MyColor.searchText,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomCardWidget(image: MyImage.facebook),
                const SizedBox(
                  width: 20,
                ),
                BottomCardWidget(image: MyImage.google),
                const SizedBox(
                  width: 20,
                ),
                BottomCardWidget(image: MyImage.apple),
              ],
            ),
            const SizedBox(height: 50,),
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegPage()));
                },
                child: RichText(
                  text: TextSpan(
                      text: "Dont't have an account?",
                      style:
                      regularTextStyle14.copyWith(color: MyColor.searchText),
                      children: [
                        TextSpan(
                            text: "  Sign up",style: regularTextStyle14.copyWith(color: MyColor.eSeeAll)
                        )
                      ]
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
