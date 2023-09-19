import 'package:emerald_newproject/views/auth/pages/cards/cardcategory/groupgifting/gifting_created.dart';
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
  final List<String> images = [
    'assets/images/head.png',
    'assets/images/head.png',
    'assets/images/head.png',
    'assets/images/head.png',
  ];
  int height = 200000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.orange,
          ),
        ),
        title: Text(
          'Group Gifting',
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
        child: ListView(
          children: [
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
              textAlign: TextAlign.center,
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
              textAlign: TextAlign.center,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomisedField(
                    hintText: 'Target Amount',
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 28),
                  Text(
                    'Available Amount',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.db,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Slider(
                      value: height.toDouble(),
                      max: 200000,
                      activeColor: AppColors.green,
                      inactiveColor: AppColors.w,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(height.toString()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Participant',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.db),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < images.length; i++)
                        Align(
                          widthFactor: 0.5,
                          child: CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage(images[i]),
                          ),
                        ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.green)),
                          height: 27,
                          width: 67,
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              'See all',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.green,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 62,
                  ),
                  CustomisedButton('Purchase', onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const GiftingCreatedView();
                        },
                      ),
                    );
                  }, buttonColor: AppColors.orange, textColor: AppColors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
