import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:emerald_newproject/views/widgets/customised_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/customised_button.dart';

class AccountDetailsView extends StatefulWidget {
  const AccountDetailsView({super.key});

  @override
  State<AccountDetailsView> createState() => _AccountDetailsViewState();
}

class _AccountDetailsViewState extends State<AccountDetailsView> {
  TextEditingController fullname = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
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
          padding: const EdgeInsets.only(top: 42),
          child: SafeArea(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: const AssetImage('assets/images/head.png'),
                  radius: 50,
                  child: Stack(
                    children: [
                      Center(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                              radius: 18,
                              backgroundColor: AppColors.darkgreen,
                              child: const Image(
                                image: AssetImage(
                                  'assets/images/pen.png',
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Edit Picture',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      CustomisedField(
                        controller: fullname,
                        hintText: 'Full name',
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomisedField(
                        hintText: 'Phone Number',
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        controller: phonenumber,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomisedField(
                        hintText: 'Email',
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        controller: email,
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      CustomisedButton('Save',
                          onPressed: () {},
                          buttonColor: AppColors.orange,
                          textColor: AppColors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
