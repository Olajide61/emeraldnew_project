import 'package:emerald_newproject/views/auth/create_view.dart';
import 'package:emerald_newproject/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/color.dart';
import '../widgets/customised_button.dart';
import '../widgets/customised_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  bool hideText = true;
  bool autoValidate = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
              'Login',
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
                    hintText: 'Email',
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomisedField(
                    hintText: 'Confirm password',
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: passwordController,
                    obscureText: hideText,
                    suffixIcon: IconButton(
                      color: AppColors.darkGrey,
                      onPressed: () {
                        hideText = !hideText;
                        setState(() {});
                      },
                      icon: Icon(
                          hideText ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomisedButton('Login', onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }),
                      (a) => false,
                    );
                  }, buttonColor: AppColors.orange, textColor: AppColors.white),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I don’t have an account.',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return const CreateView();
                            }),
                          );
                        },
                        child: Text(
                          'Register',
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.orange,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
