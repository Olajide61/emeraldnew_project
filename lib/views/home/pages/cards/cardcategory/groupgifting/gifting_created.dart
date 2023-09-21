import 'package:emerald_newproject/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../widgets/color.dart';
import '../../../../../widgets/customised_button.dart';
import 'package:share_plus/share_plus.dart';

class GiftingCreatedView extends StatefulWidget {
  const GiftingCreatedView({super.key});

  @override
  State<GiftingCreatedView> createState() => _GiftingCreatedViewState();
}

class _GiftingCreatedViewState extends State<GiftingCreatedView> {
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
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 98),
                child: Image.asset(
                  'assets/images/created.png',
                  height: 264,
                  width: 219.135,
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Group Gifting has\n been successfully created',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 42,
              ),
              CustomisedButton('Share', onPressed: () {
                Share.share('Share');
              }, buttonColor: AppColors.orange, textColor: AppColors.white),
              const SizedBox(
                height: 19,
              ),
              CustomisedButton('Go to Dashboard', onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }), (route) => false);
              },
                  buttonColor: AppColors.white,
                  borderColor: AppColors.darkyorange,
                  textColor: AppColors.darkorange),
            ],
          ),
        ),
      ),
    );
  }
}
