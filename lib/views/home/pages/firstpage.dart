import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/customised_button.dart';
import '../../widgets/customised_field.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 34),
              child: Text(
                'Stage 1: Select card',
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
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomisedField(
                    hintText: 'Select GiftCard Type',
                    suffixIcon: IconButton(
                      icon: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          image: AssetImage('assets/images/drop.png'),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: emailController,
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
                      Image.asset(
                        'assets/images/cardatm.png',
                        width: 159,
                        height: 106.862,
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Image.asset(
                        'assets/images/backatm.png',
                        width: 159,
                        height: 106.862,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Image.asset('assets/images/newcard.png',
                          width: 159, height: 106.862),
                      const SizedBox(
                        width: 24,
                      ),
                      Image.asset('assets/images/card2.png',
                          width: 159, height: 106.862),
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
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Text(
                          '₦‎ 2,000.00',
                          style: GoogleFonts.openSans(
                            color: AppColors.darkGrey,
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
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
                          Text(
                            'Add fund',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              color: AppColors.db,
                              textStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w700),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
