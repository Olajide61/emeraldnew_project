import 'package:emerald_newproject/views/home/pages/cards/cardcategory/groupgifting/joingift.dart';
import 'package:emerald_newproject/views/home/pages/cards/cardcategory/groupgifting/purchase_gift.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../widgets/color.dart';
import 'groupgifting/group_gifting.dart';

class GroupCardView extends StatefulWidget {
  const GroupCardView({super.key});

  @override
  State<GroupCardView> createState() => _GroupCardViewState();
}

class _GroupCardViewState extends State<GroupCardView> {
  final List<String> images = [
    'assets/images/head.png',
    'assets/images/head.png',
    'assets/images/head.png',
    'assets/images/head.png',
  ];

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 46),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const GroupGiftView();
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 46,
                          child: Padding(
                            padding: const EdgeInsets.all(13.5),
                            child: Text(
                              'Create Gifting',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 23,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const JoinGiftView();
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.green),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          height: 46,
                          child: Padding(
                            padding: const EdgeInsets.all(13.5),
                            child: Text(
                              'Join Gifting',
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
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Invitations',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.darkGrey,
                  ),
                ),
              ),
              const SizedBox(height: 26),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const PurchaseGiftsView();
                        },
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.green)),
                      height: 27,
                      width: 67,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text(
                          'View',
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
              const SizedBox(height: 4),
              Text(
                'Happy Birthday Card',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.db,
                  ),
                ),
              ),
              Text(
                'Created by: Drey Gare',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 12.8,
                    fontWeight: FontWeight.w400,
                    color: AppColors.db,
                  ),
                ),
              ),
              const SizedBox(height: 39),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.green)),
                      height: 27,
                      width: 67,
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text(
                          'Join',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'Wedding Anniversary Card',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.db,
                  ),
                ),
              ),
              Text(
                'Created by: Drey Gare',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 12.8,
                    fontWeight: FontWeight.w400,
                    color: AppColors.db,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
