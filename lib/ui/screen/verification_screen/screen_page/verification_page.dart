import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final List<TextEditingController> _controllers =
  List.generate(4, (_) => TextEditingController());
  bool _isButtonEnabled = false;
  late Timer _timer;
  int _minuteRemaind = 60;

  @override
  void initState() {
    super.initState();
    startTimer();
    for (var controller in _controllers) {
      controller.addListener(() {
        setState(() {
          _isButtonEnabled = _controllers.every((c) => c.text.isNotEmpty);
        });
      });
    }
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_minuteRemaind > 0) {
          _minuteRemaind--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verification"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "We've sent you the verification code on",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Text(
              "+1 6358 9248 5789",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                    (index) => SizedBox(
                  width: 60,
                  child: TextField(
                    controller: _controllers[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 3) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _isButtonEnabled
                  ? () {
                // Handle button action
                print("Verification code submitted");
              }
                  : null,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.black,
              ),
              child: const Text(
                "CONTINUE",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "Re-send code in $_minuteRemaind seconds",
                style: TextStyle(
                  fontSize: 14,
                  color: _minuteRemaind == 0 ? Colors.orange : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
