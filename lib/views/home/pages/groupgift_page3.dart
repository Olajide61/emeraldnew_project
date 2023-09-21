import 'package:emerald_newproject/views/home/pages/cards/cardcategory/groupgifting/gifting_created.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/color.dart';
import '../../widgets/customised_button.dart';
import '../../widgets/customised_field.dart';

class GroupGiftThreeView extends StatefulWidget {
  const GroupGiftThreeView({super.key, required this.controller});
  final PageController controller;
  @override
  State<GroupGiftThreeView> createState() => _GroupGiftThreeViewState();
}

class _GroupGiftThreeViewState extends State<GroupGiftThreeView> {
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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Stage 3: Enter Amount',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        color: AppColors.black,
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
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
              hintText: 'Targeted Amount',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomisedField(
              hintText: 'Amount you want to gift',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 153,
            ),
            CustomisedButton('Create', onPressed: () {
              Navigator.push(
                context,
                (MaterialPageRoute(
                  builder: (context) {
                    return const GiftingCreatedView();
                  },
                )),
              );
            }, buttonColor: AppColors.orange, textColor: AppColors.white),
          ],
        ),
      ),
    );
  }
}
