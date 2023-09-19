import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/color.dart';
import '../../widgets/customised_button.dart';
import '../../widgets/customised_field.dart';

class GroupGiftTwoView extends StatefulWidget {
  const GroupGiftTwoView({super.key, required this.controller});
  final PageController controller;
  @override
  State<GroupGiftTwoView> createState() => _GroupGiftTwoViewState();
}

class _GroupGiftTwoViewState extends State<GroupGiftTwoView> {
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
          child: Padding(
            padding: const EdgeInsets.only(top: 34),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 46,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Stage 2: Enter Recipient details',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                          color: AppColors.black,
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const CustomisedField(
                  hintText: 'Recipient’s Name',
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomisedField(
                  hintText: 'Recipient’s Phone Number',
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomisedField(
                  hintText: 'Recipient’s Address',
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  color: AppColors.lightgrey,
                  child: DropdownButton<String>(
                    value: selectedValue,
                    isExpanded: true,
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        'Location',
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
                      'Lagos',
                      'Abuja',
                      'Kano',
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
                  height: 28,
                ),
                CustomisedButton('Next',
                    onPressed: selectedValue == null
                        ? null
                        : () {
                            widget.controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                          },
                    buttonColor: AppColors.orange,
                    textColor: AppColors.white),
              ],
            ),
          )),
    );
  }
}
