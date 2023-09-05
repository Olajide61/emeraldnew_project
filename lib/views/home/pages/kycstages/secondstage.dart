import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/color.dart';
import '../../../widgets/customised_button.dart';
import '../../../widgets/customised_field.dart';

class SecondStage extends StatefulWidget {
  const SecondStage({super.key});

  @override
  State<SecondStage> createState() => _SecondStageState();
}

class _SecondStageState extends State<SecondStage> {
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
          padding: const EdgeInsets.only(top: 34, right: 24),
          child: Column(
            children: [
              Text(
                'Stage 2: BVN Validation',
                style: GoogleFonts.openSans(
                  color: AppColors.black,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 69,
              ),
              const CustomisedField(
                hintText: 'Enter BVN Number',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 212,
              ),
              Text(
                'By clicking on Next, its saves and next',
                style: GoogleFonts.openSans(
                  color: AppColors.blackbb,
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomisedButton('Next',
                  onPressed: () {},
                  buttonColor: AppColors.pink,
                  textColor: AppColors.white),
            ],
          ),
        ),
      ),
    );
  }
}
