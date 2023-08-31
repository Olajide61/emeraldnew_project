import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/color.dart';
import '../../../widgets/customised_button.dart';

class KycSuccessfulView extends StatefulWidget {
  const KycSuccessfulView({super.key});

  @override
  State<KycSuccessfulView> createState() => _KycSuccessfulViewState();
}

class _KycSuccessfulViewState extends State<KycSuccessfulView> {
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
          padding: const EdgeInsets.only(top: 104.47),
          child: Column(
            children: [
              Image.asset('assets/images/kycdone.png',
                  height: 244.532, width: 246.639),
              const SizedBox(height: 52),
              Text(
                'Well done! Your details \nhave been successfully \nsaved',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  color: AppColors.black,
                  textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 39),
              Padding(
                padding: const EdgeInsets.all(24),
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
