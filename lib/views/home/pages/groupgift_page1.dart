import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/color.dart';
import '../../widgets/customised_button.dart';

class GroupGiftOneView extends StatefulWidget {
  const GroupGiftOneView({super.key, required this.controller});
  final PageController controller;
  @override
  State<GroupGiftOneView> createState() => _GroupGiftOneViewState();
}

class _GroupGiftOneViewState extends State<GroupGiftOneView> {
  bool isButtonActive = false;
  int _currentPage = 0;
  String? selectedValue;
  String? dropdownvalue;
  int? selectedCard;
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
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(items),
                        ),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Select GiftCard Design',
                  style: GoogleFonts.openSans(
                    color: AppColors.darkGrey,
                    textStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 24,
                  runSpacing: 24,
                  children: [0, 1, 2, 3]
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            selectedCard = e;
                            setState(() {});
                          },
                          child: Opacity(
                              opacity: selectedCard == e ? 1 : .4,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/card$e.png',
                                    width: (MediaQuery.of(context).size.width -
                                            72) /
                                        2,
                                    height: 110,
                                  ),
                                  if (selectedCard == e)
                                    const Icon(
                                      Icons.check_box_outlined,
                                      color: Colors.green,
                                      size: 35,
                                    )
                                ],
                              )),
                        ),
                      )
                      .toList(),
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
                    CustomisedButton(
                      'Next',
                      onPressed: selectedValue == null || selectedCard == null
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
                      textColor: AppColors.white,
                    ),
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
