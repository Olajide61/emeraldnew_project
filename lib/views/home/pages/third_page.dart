import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/color.dart';
import '../../widgets/customised_button.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key,required this.controller});
  final PageController controller;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Text(
            'Stage 3: Checkout',
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
            height: 16,
          ),
          Image.asset(
            'assets/images/cardatm.png',
            height: 101.673,
            width: 159,
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Recipient’s Details',
                      style: GoogleFonts.openSans(
                        color: AppColors.grey,
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.w,
                ),
                height: 96,
                width: 342,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Name',
                            style: GoogleFonts.openSans(
                              color: AppColors.grey,
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Gboyinde Goodness',
                            style: GoogleFonts.openSans(
                              color: AppColors.grey,
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Phone Number',
                                style: GoogleFonts.openSans(
                                  color: AppColors.grey,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '(225) 555-0118',
                                style: GoogleFonts.openSans(
                                  color: AppColors.grey,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Address',
                                style: GoogleFonts.openSans(
                                  color: AppColors.grey,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '6391 Elgin St. Celina, Delaware 10299',
                                style: GoogleFonts.openSans(
                                  color: AppColors.grey,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Location',
                      style: GoogleFonts.openSans(
                        color: AppColors.grey,
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.w,
                ),
                height: 72,
                width: 342,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'City/ Town',
                            style: GoogleFonts.openSans(
                              color: AppColors.grey,
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Lagos (Nigeria)',
                            style: GoogleFonts.openSans(
                              color: AppColors.grey,
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Delivery Fee',
                                style: GoogleFonts.openSans(
                                  color: AppColors.grey,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '₦‎ 2,000.00',
                                style: GoogleFonts.openSans(
                                  color: AppColors.grey,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Giftcard Details',
                      style: GoogleFonts.openSans(
                        color: AppColors.grey,
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.w,
                ),
                height: 72,
                width: 342,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Giftcard Details',
                            style: GoogleFonts.openSans(
                              color: AppColors.grey,
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '₦‎ 2,000.00',
                            style: GoogleFonts.openSans(
                              color: AppColors.grey,
                              textStyle: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Amount to be gifted',
                                style: GoogleFonts.openSans(
                                  color: AppColors.grey,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '₦‎ 2,000.00',
                                style: GoogleFonts.openSans(
                                  color: AppColors.grey,
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Total',
                      style: GoogleFonts.openSans(
                        color: AppColors.grey,
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '₦‎ 8,000.00',
                      style: GoogleFonts.openSans(
                        color: AppColors.grey,
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              CustomisedButton('Checkout', onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(22),
                  )),
                  context: context,
                  builder: (BuildContext builder) {
                    return Container(
                      height: 315,
                      width: 389,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 23, right: 25.5, top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Checkout',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
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
                            InkWell(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      'assets/images/bank.png',
                                      height: 36,
                                      width: 36,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 14,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pay from Balance',
                                        style: GoogleFonts.openSans(
                                          textStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.black,
                                          ),
                                        ),
                                      ),
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
                              height: 12,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 43),
                              child: Divider(),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'assets/images/pay.png',
                                    height: 36,
                                    width: 35.996,
                                  ),
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pay with Card',
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Make a donation towards an event',
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                          fontSize: 11.5,
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.blackbb,
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
                            const Padding(
                              padding: EdgeInsets.only(right: 43),
                              child: Divider(),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'assets/images/bank.png',
                                    height: 36,
                                    width: 36,
                                  ),
                                ),
                                const SizedBox(
                                  width: 14,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pay with Transfer',
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ),
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
                          ],
                        ),
                      ),
                    );
                  },
                );
              }, buttonColor: AppColors.orange, textColor: AppColors.white),
            ],
          ),
        ],
      ),
    );
  }
}
