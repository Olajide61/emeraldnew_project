import 'package:emerald_newproject/views/auth/login_view.dart';
import 'package:emerald_newproject/views/auth/smsverification_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/color.dart';
import '../widgets/customised_button.dart';
import '../widgets/customised_field.dart';

class CreateView extends StatefulWidget {
  const CreateView({super.key});

  @override
  State<CreateView> createState() => _CreateViewState();
}

class _CreateViewState extends State<CreateView> {
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  bool hideText = true;
  bool autoValidate = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              const SizedBox(height: 32),
              Text(
                'Create account',
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
                      hintText: 'Enter full name',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: nameController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomisedField(
                      hintText: 'Phone Number',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: phonenumberController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomisedField(
                      hintText: 'Email',
                      textInputType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    CustomisedButton('Create', onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const SmsVerificationView();
                        },
                      ));
                    },
                        buttonColor: AppColors.orange,
                        textColor: AppColors.white),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'I have an account.',
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
                                return const LoginView();
                              }),
                            );
                          },
                          child: Text(
                            'Login',
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
      ),
    );
  }
}
