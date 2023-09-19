import 'package:emerald_newproject/views/auth/proceedlogin_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/color.dart';
import '../widgets/customised_button.dart';
import '../widgets/customised_field.dart';

class ConfirmPasswordView extends StatefulWidget {
  const ConfirmPasswordView({super.key});

  @override
  State<ConfirmPasswordView> createState() => _ConfirmPasswordViewState();
}

class _ConfirmPasswordViewState extends State<ConfirmPasswordView> {
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();

  bool hideText1 = true;
  bool hideText2 = true;

  bool autoValidate = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
              padding: const EdgeInsets.only(top: 64, left: 83, right: 82.09),
              child: Image.asset(
                'assets/images/logo.png',
                height: 34,
                width: 224.91,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'Create password',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  CustomisedField(
                    hintText: 'Create password',
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: passwordController1,
                    obscureText: hideText1,
                    suffixIcon: IconButton(
                      color: AppColors.darkGrey,
                      onPressed: () {
                        setState(() {
                          hideText1 = !hideText1;
                        });
                      },
                      icon: Icon(
                          hideText1 ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomisedField(
                    hintText: 'Confirm password',
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: passwordController2,
                    obscureText: hideText2,
                    suffixIcon: IconButton(
                      color: AppColors.darkGrey,
                      onPressed: () {
                        hideText2 = !hideText2;
                        setState(() {});
                      },
                      icon: Icon(
                          hideText2 ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  CustomisedButton('Confirm', onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const ProceedLoginView();
                      }),
                    );
                  }, buttonColor: AppColors.orange, textColor: AppColors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
