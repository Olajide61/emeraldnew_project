import 'package:emerald_newproject/views/auth/phoneverify_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../widgets/color.dart';
import '../widgets/customised_button.dart';

class SmsVerificationView extends StatefulWidget {
  const SmsVerificationView({super.key});

  @override
  State<SmsVerificationView> createState() => _SmsVerificationViewState();
}

class _SmsVerificationViewState extends State<SmsVerificationView> {
  final pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/white0.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 64, left: 83, right: 82.09),
              child: Image.asset(
                'assets/images/logo.png',
                height: 34,
                width: 224.91,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'SMS Verification',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Enter the 4-digit code sent to your phone\n number to verify your account',
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Pinput(
                    obscureText: true,
                    defaultPinTheme: PinTheme(
                        decoration: BoxDecoration(
                          color: AppColors.lightgrey,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        width: 68,
                        height: 68),
                    onSubmitted: (value) {
                      setState(
                        () {},
                      );
                    },
                    length: 4,
                    keyboardType: TextInputType.number,
                    controller: pinController,
                    textInputAction: TextInputAction.next,
                    showCursor: true,
                    validator: (s) {},
                    onCompleted: null,
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn’t receive code?',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.grey,
                          ),
                        ),
                      ),
                      Text(
                        ' Resend code',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.orange,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomisedButton('Verify', onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const PhoneVerifyView();
                      }),
                    );
                  }, buttonColor: AppColors.orange, textColor: AppColors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
