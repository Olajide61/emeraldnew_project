import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/color.dart';
import '../../widgets/customised_button.dart';
import '../../widgets/customised_field.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 46, top: 32),
                child: Row(
                  children: [
                    Text(
                      'Stage 2: Enter Recipient details',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        color: AppColors.black,
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const CustomisedField(
                hintText: 'Recipient’s Name',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomisedField(
                hintText: 'Recipient’s Phone Number',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomisedField(
                hintText: 'Recipient’s Address',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomisedField(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(15),
                  child: ImageIcon(
                    const AssetImage('assets/images/drop.png'),
                    color: AppColors.black,
                    size: 24,
                  ),
                ),
                hintText: 'Location',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 36,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I don’t have up to ₦‎ 2,000.00 in my account.',
                    style: GoogleFonts.openSans(
                      color: AppColors.grey,
                      textStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Text(
                    'Add fund',
                    style: GoogleFonts.openSans(
                      color: AppColors.db,
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              CustomisedButton('Next',
                  onPressed: () {},
                  buttonColor: AppColors.orange,
                  textColor: AppColors.white),
            ],
          ),
        ),
      ),
    );
  }
}
