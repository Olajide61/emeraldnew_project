
import 'package:emerald_newproject/views/auth/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/color.dart';
import '../widgets/customised_button.dart';

class PhoneVerifyView extends StatefulWidget {
  const PhoneVerifyView({super.key});

  @override
  State<PhoneVerifyView> createState() => _PhoneVerifyViewState();
}

class _PhoneVerifyViewState extends State<PhoneVerifyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/n.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 189.83, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Phone number has\n been successfully verified',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 73,
                  ),
                  CustomisedButton('Continue', onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const OtpView();
                      }),
                    );
                  }, buttonColor: AppColors.orange, textColor: AppColors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
