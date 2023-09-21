import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/color.dart';
import '../../../widgets/customised_button.dart';
import '../../../widgets/customised_field.dart';

class SecondStage extends StatefulWidget {
  const SecondStage({super.key, required this.controller});
  final PageController controller;

  @override
  State<SecondStage> createState() => _SecondStageState();
}

class _SecondStageState extends State<SecondStage> {
  TextEditingController bvn = TextEditingController();
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
        child: Padding(
          padding: const EdgeInsets.only(top: 34, right: 24),
          child: ListView(
            children: [
              Text(
                'Stage 2: BVN Validation',
                textAlign: TextAlign.center,
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
              CustomisedField(
                hintText: 'Enter BVN Number',
                maxLength: 11,
                controller: bvn,
                textInputType: TextInputType.number,
                textInputAction: TextInputAction.done,
                onChanged: (a) {
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 212,
              ),
              Text(
                'By clicking on Next, its saves and next',
                textAlign: TextAlign.center,
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
              CustomisedButton(
                'Next',
                onPressed: bvn.text.length == 11
                    ? () {
                        widget.controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      }
                    : null,
                buttonColor: AppColors.orange,
                textColor: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
