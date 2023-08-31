import 'package:emerald_newproject/views/home/pages/cards/cardcategory/groupgifting/purchase_gift.dart';
import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:emerald_newproject/views/widgets/customised_button.dart';
import 'package:emerald_newproject/views/widgets/customised_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupDetailsView extends StatefulWidget {
  const GroupDetailsView({super.key});

  @override
  State<GroupDetailsView> createState() => _GroupDetailsViewState();
}

class _GroupDetailsViewState extends State<GroupDetailsView> {
  TextEditingController targetAmount = TextEditingController();
  TextEditingController email = TextEditingController();
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
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 42),
                child: Row(
                  children: [
                    Text(
                      'Group Giftcard Details',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.db,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    CustomisedField(
                      hintText: 'Target Amount',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: targetAmount,
                    ),
                    const SizedBox(height: 65),
                    CustomisedField(
                      hintText: 'Amount you want to gift',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: targetAmount,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 120),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: CustomisedButton('Gift', onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PurchaseGiftsView();
                  }));
                }, buttonColor: AppColors.orange, textColor: AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
