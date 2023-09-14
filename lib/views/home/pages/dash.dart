import 'package:carousel_slider/carousel_slider.dart';
import 'package:emerald_newproject/views/home/notification.dart';
import 'package:emerald_newproject/views/home/pages/cards/cardcategory/group.dart';
import 'package:emerald_newproject/views/home/pages/cards/cardcategory/individual.dart';
import 'package:emerald_newproject/views/profile/accountdetails_view.dart';
import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../kyc_view.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.zero,
                    topLeft: Radius.zero,
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                height: 390,
                width: 753,
                child: Padding(
                  padding: const EdgeInsets.only(top: 34, left: 24, right: 24),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 34, right: 16),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const AccountDetailsView();
                                }));
                              },
                              child: CircleAvatar(
                                backgroundImage:
                                    const AssetImage('assets/images/head.png'),
                                child: Container(
                                  height: 48,
                                  width: 48,
                                ),
                              ),
                            ),
                            const SizedBox(width: 22),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome back,',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Henry!',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return const NotificationView();
                                  }),
                                );
                              },
                              child: Image.asset(
                                'assets/images/bell.png',
                                height: 35.778,
                                width: 35.778,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24.14),
                      CarouselSlider(
                        items: [1, 2, 3]
                            .map(
                              (e) => Image.asset(
                                'assets/images/atm.png',
                                height: 157,
                              ),
                            )
                            .toList(),
                        options: CarouselOptions(
                            height: 160,
                            // autoPlay: true,
                            enlargeCenterPage: true,
                            onPageChanged: (a, _) {
                              _index = a;
                              setState(() {});
                            }),
                      ),
                      const SizedBox(height: 14.04),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                dot(_index == 0),
                                dot(_index == 1),
                                dot(_index == 2),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 3,
                        )
                      ]),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 8.17),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(22),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext builder) {
                                    return Container(
                                      height: 315,
                                      width: 389,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 23, right: 25.5, top: 24),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Add Fund',
                                                  style: GoogleFonts.openSans(
                                                    textStyle: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                                const Spacer(),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Image.asset(
                                                    'assets/images/cancel.png',
                                                    height: 12,
                                                    width: 12,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Text(
                                              'Select a Deposit Method',
                                              style: GoogleFonts.openSans(
                                                textStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.darkGrey,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 13,
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/pay.png',
                                                  height: 36,
                                                  width: 35.996,
                                                ),
                                                const SizedBox(
                                                  width: 14,
                                                ),
                                                Text(
                                                  'Pay with Card',
                                                  style: GoogleFonts.openSans(
                                                    textStyle: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Image.asset(
                                                  'assets/images/arrow.png',
                                                  height: 24,
                                                  width: 24,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 20.5,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 43),
                                              child: Divider(),
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/bank.png',
                                                  height: 36,
                                                  width: 35.996,
                                                ),
                                                const SizedBox(
                                                  width: 14,
                                                ),
                                                Text(
                                                  'Pay with Transfer',
                                                  style: GoogleFonts.openSans(
                                                    textStyle: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Image.asset(
                                                  'assets/images/arrow.png',
                                                  height: 24,
                                                  width: 24,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.pink,
                                ),
                                height: 44.774,
                                width: 44.774,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.59),
                                  child: Image.asset(
                                    'assets/images/add.png',
                                    height: 13.075,
                                    width: 13.075,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 6.54),
                            Text(
                              'Add Fund',
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 11.441,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.1, right: 18),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(22),
                                    ),
                                  ),
                                  context: context,
                                  builder: (BuildContext builder) {
                                    return Container(
                                      height: 315,
                                      width: 389,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 23, right: 25.5, top: 24),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Giftcard Category',
                                                  style: GoogleFonts.openSans(
                                                    textStyle: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: AppColors.black,
                                                    ),
                                                  ),
                                                ),
                                                const Spacer(),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Image.asset(
                                                    'assets/images/cancel.png',
                                                    height: 12,
                                                    width: 12,
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Text(
                                              'Select Giftcard category',
                                              style: GoogleFonts.openSans(
                                                textStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.darkGrey,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 13,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                    return const IndvidualCardView();
                                                  }),
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: AppColors.pink,
                                                    ),
                                                    height: 44.774,
                                                    width: 44.774,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: Image.asset(
                                                        'assets/images/auser.png',
                                                        height: 24,
                                                        width: 24,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 14,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Individual Gift Card',
                                                        style: GoogleFonts
                                                            .openSans(
                                                          textStyle: TextStyle(
                                                            fontSize: 14.15,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                AppColors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        'Get a giftcard for your friends/family',
                                                        style: GoogleFonts
                                                            .openSans(
                                                          textStyle: TextStyle(
                                                            fontSize: 11.496,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: AppColors
                                                                .blackbb,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Image.asset(
                                                    'assets/images/arrow.png',
                                                    height: 24,
                                                    width: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20.5,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 43),
                                              child: Divider(),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) {
                                                      return const GroupCardView();
                                                    },
                                                  ),
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: AppColors.purple,
                                                    ),
                                                    height: 44.774,
                                                    width: 44.774,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: Image.asset(
                                                        'assets/images/users.png',
                                                        height: 24,
                                                        width: 24,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 14,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Group Gift Card',
                                                        style: GoogleFonts
                                                            .openSans(
                                                          textStyle: TextStyle(
                                                            fontSize: 14.15,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                AppColors.black,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        'Make a donation towards an event',
                                                        style: GoogleFonts
                                                            .openSans(
                                                          textStyle: TextStyle(
                                                            fontSize: 11.5,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: AppColors
                                                                .blackbb,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Image.asset(
                                                    'assets/images/arrow.png',
                                                    height: 24,
                                                    width: 24,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.pink,
                                ),
                                height: 44.774,
                                width: 44.774,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.82),
                                  child: Image.asset(
                                    'assets/images/buy.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 6.54,
                            ),
                            Text(
                              'Buy Card',
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 11.441,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 70),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 3,
                  )
                ]),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const KycView();
                  }),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 13),
                child: Row(
                  children: [
                    Text(
                      'Activate my card',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkygreen,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/images/arrow.png',
                      color: AppColors.darkygreen,
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 16.47),
            child: Row(
              children: [
                Text(
                  'Recent transactions',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.pinky,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  height: 24,
                  width: 67,
                  child: Center(
                    child: Text(
                      'See all',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.darkorange,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget dot(bool status) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: status ? Colors.black : Colors.grey,
      ),
      height: 5.924,
      margin: const EdgeInsets.all(6),
      width: 17.378,
    );
  }
}
