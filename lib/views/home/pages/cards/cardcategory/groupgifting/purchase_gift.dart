import 'package:emerald_newproject/views/home/pages/cards/cardcategory/groupgifting/gift_sent.dart';
import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:emerald_newproject/views/widgets/customised_button.dart';
import 'package:emerald_newproject/views/widgets/customised_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchaseGiftsView extends StatefulWidget {
  const PurchaseGiftsView({super.key});

  @override
  State<PurchaseGiftsView> createState() => _PurchaseGiftsViewState();
}

class _PurchaseGiftsViewState extends State<PurchaseGiftsView> {
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
          padding: const EdgeInsets.only(left: 24, top: 49),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: AppColors.darkorange,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 85),
                  Text(
                    'Group Gifting',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 68),
              Image.asset(
                'assets/images/cardatm.png',
                height: 101.673,
                width: 159,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Wedding Anniversary Card',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 20.811,
                    fontWeight: FontWeight.w700,
                    color: AppColors.db,
                  ),
                ),
              ),
              Text(
                'Created by: You',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 19.027,
                    fontWeight: FontWeight.w400,
                    color: AppColors.db,
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    const CustomisedField(
                      hintText: 'Target Amount',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 256.42,
                    ),
                    CustomisedButton('Purchase', onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const GiftSentView();
                          },
                        ),
                      );
                    },
                        buttonColor: AppColors.orange,
                        textColor: AppColors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
