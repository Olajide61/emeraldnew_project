import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/color.dart';
import '../../widgets/customised_button.dart';
import '../../widgets/customised_field.dart';

class GroupGiftOneView extends StatefulWidget {
  const GroupGiftOneView({super.key});

  @override
  State<GroupGiftOneView> createState() => _GroupGiftOneViewState();
}

class _GroupGiftOneViewState extends State<GroupGiftOneView> {
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
                CustomisedField(
                  enabled: false,
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
                        height: 106.862,
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/backatm.png',
                        width: 159,
                        height: 106.862,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset('assets/images/newcard.png',
                          width: 159, height: 106.862),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Image.asset('assets/images/card2.png',
                          width: 159, height: 106.862),
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
                    CustomisedButton('Next',
                        onPressed: () {},
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
