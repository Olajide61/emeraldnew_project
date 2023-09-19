import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/customised_button.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key, required this.controller});
  final PageController controller;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  bool isButtonActive = false;
  int _currentPage = 0;
  String? selectedValue;
  String? dropdownvalue;

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
              padding: const EdgeInsets.only(top: 34),
              child: Text(
                'Stage 1: Select card',
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
            const SizedBox(height: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: AppColors.lightgrey,
                  child: DropdownButton<String>(
                    value: selectedValue,
                    isExpanded: true,
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        'Select GiftCard Type',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff9C9C9C)),
                        ),
                      ),
                    ),
                    underline: const SizedBox(),
                    icon: Padding(
                      padding: const EdgeInsets.all(11),
                      child: ImageIcon(
                        const AssetImage('assets/images/drop.png'),
                        color: AppColors.black,
                        size: 24,
                      ),
                    ),
                    items: [
                      'Happy Birthday Card',
                      'Standard Card',
                      'Travel Card',
                    ].map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Select GiftCard Design',
                  style: GoogleFonts.openSans(
                    color: AppColors.darkGrey,
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/cardatm.png',
                        width: 159,
                        height: 106.86,
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/backatm.png',
                        width: 159,
                        height: 106.86,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset('assets/images/newcard.png',
                          width: 159, height: 106.86),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Image.asset('assets/images/card2.png',
                          width: 159, height: 106.86),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Text(
                      'GiftCard Cost',
                      style: GoogleFonts.openSans(
                        color: AppColors.darkGrey,
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '₦‎ 2,000.00',
                      style: GoogleFonts.openSans(
                        color: AppColors.darkGrey,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'I don’t have up to ₦‎ 2,000.00 in my account.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            color: AppColors.db,
                            textStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ),
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
                                      borderRadius: BorderRadius.circular(22)),
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
                                                  fontWeight: FontWeight.w600,
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
                                          padding: EdgeInsets.only(right: 43),
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
                                                  fontWeight: FontWeight.w600,
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
                          child: Text(
                            'Add fund',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              color: AppColors.db,
                              textStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomisedButton('Next',
                        onPressed: selectedValue == null
                            ? null
                            : () {
                                if (_currentPage < 2) {
                                  widget.controller.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.linear,
                                  );
                                  setState(() {
                                    _currentPage++;
                                  });
                                } else {}
                              },
                        buttonColor: AppColors.orange,
                        textColor: AppColors.white),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
