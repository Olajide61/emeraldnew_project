import 'package:emerald_newproject/views/home/pages/startkyc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/color.dart';
import '../widgets/customised_button.dart';

class KycView extends StatefulWidget {
  const KycView({super.key});

  @override
  State<KycView> createState() => _KycViewState();
}

class _KycViewState extends State<KycView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.darkorange,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'KYC',
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
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
          padding: const EdgeInsets.only(left: 24, top: 49, right: 24),
          child: Column(
            children: [
              Image.asset('assets/images/kyc.png'),
              const SizedBox(height: 71.67),
              Text(
                'Start KYC Procedure',
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
                height: 16,
              ),
              Text(
                'To Activate your Emerald Giftcard, \nkindly start this KYC procedure',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkGrey,
                  ),
                ),
              ),
              const SizedBox(
                height: 61,
              ),
              CustomisedButton('Start', onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const KycStartView();
                }));
              }, buttonColor: AppColors.orange, textColor: AppColors.white),
            ],
          ),
        ),
      ),
    );
  }
}
