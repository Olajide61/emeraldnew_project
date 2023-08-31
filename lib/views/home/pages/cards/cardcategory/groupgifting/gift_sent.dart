import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:emerald_newproject/views/widgets/customised_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GiftSentView extends StatefulWidget {
  const GiftSentView({super.key});

  @override
  State<GiftSentView> createState() => _GiftSentViewState();
}

class _GiftSentViewState extends State<GiftSentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Padding(
          padding: const EdgeInsets.only(left: 18, top: 127),
          child: Column(
            children: [
              Image.asset(
                'assets/images/sent.png',
                height: 221.383,
                width: 354.228,
              ),
              const SizedBox(
                height: 56.4,
              ),
              Text(
                'Your gift has been sent',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 76, right: 24),
                child: CustomisedButton('Go to Dashboard',
                    onPressed: () {},
                    buttonColor: AppColors.orange,
                    textColor: AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
