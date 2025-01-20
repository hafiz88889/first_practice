import 'package:event/config/utils/image_custom_widget.dart';
import 'package:event/config/utils/my_color.dart';
import 'package:event/config/utils/text_style.dart';
import 'package:event/ui/screen/home_sceen/screen_page/home_page.dart';
import 'package:event/ui/screen/splash_screen/onbroding_one/onbroding_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the next screen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnbrodingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.splash,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image(image: AssetImage(MyImage.logo),height: 100,width: 100,),
                SizedBox(height: 20),
                // App Name Section
                Text(
                    'Evenro',
                    style: regularTextStyle18.copyWith(color: MyColor.blackColor)
                ),
              ],
            ),
            SizedBox(height: 50),
            // Loading Indicator
            CircularProgressIndicator(
              color: Colors.orange, // Customize color
              strokeWidth: 3,
            ),
          ],
        ),
      ),
    );
  }
}
