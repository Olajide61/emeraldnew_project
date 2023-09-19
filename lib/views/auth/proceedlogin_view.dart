import 'package:emerald_newproject/views/auth/login_view.dart';
import 'package:emerald_newproject/views/home/home.dart';
import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/customised_button.dart';

class ProceedLoginView extends StatefulWidget {
  const ProceedLoginView({super.key});

  @override
  State<ProceedLoginView> createState() => _ProceedLoginViewState();
}

class _ProceedLoginViewState extends State<ProceedLoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/h.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 189.83, left: 24, right: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your account has been\n successfully created',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: AppColors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 73,
                  ),
                  CustomisedButton('Proceed to login', onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const LoginView();
                      }),
                    );
                  }, buttonColor: AppColors.orange, textColor: AppColors.white),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
