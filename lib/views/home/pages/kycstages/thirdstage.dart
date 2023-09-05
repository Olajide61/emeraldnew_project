import 'package:emerald_newproject/views/home/pages/kycstages/kycsuccessful.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/color.dart';
import '../../../widgets/customised_button.dart';
import '../../../widgets/customised_field.dart';

class ThirdStage extends StatefulWidget {
  const ThirdStage({super.key});

  @override
  State<ThirdStage> createState() => _ThirdStageState();
}

class _ThirdStageState extends State<ThirdStage> {
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
          padding: const EdgeInsets.only(right: 24),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 34),
                child: Text(
                  'Stage 3: Document Upload \n(e.g, NIN, Voter’s card e.t.c.)',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    color: AppColors.black,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomisedField(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(11),
                  child: ImageIcon(
                    const AssetImage('assets/images/drop.png'),
                    color: AppColors.black,
                    size: 24,
                  ),
                ),
                hintText: 'Document Type',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 44),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Upload the front of your document',
                      style: GoogleFonts.openSans(
                        color: AppColors.black,
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 530),
              CustomisedButton('Save', onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const KycSuccessfulView();
                  }),
                );
              }, buttonColor: AppColors.orange, textColor: AppColors.white),
            ],
          ),
        ),
      ),
    );
  }
}
