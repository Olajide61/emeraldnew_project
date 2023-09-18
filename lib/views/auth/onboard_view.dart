import 'package:emerald_newproject/views/auth/create_view.dart';
import 'package:emerald_newproject/views/auth/login_view.dart';
import 'package:emerald_newproject/views/widgets/content_model.dart';
import 'package:emerald_newproject/views/widgets/customised_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/color.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

int _currentPage = 0;

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/white$_currentPage.png'),
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            PageView.builder(
              itemCount: contents.length,
              onPageChanged: (a) {
                _currentPage = a;
                setState(() {});
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),
                      Container(
                        height: 297.64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: AppColors.white),
                        child: Image(
                          image: AssetImage(
                              'assets/images/image$_currentPage.png'),
                        ),
                      ),
                      const SizedBox(
                        height: 52,
                      ),
                      Column(
                        children: [
                          Text(
                            contents[i].title,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.orange),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            contents[i].discription,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.darkGrey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      dot(_currentPage == 0),
                      dot(_currentPage == 1),
                      dot(_currentPage == 2),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, top: 44.36, right: 24, bottom: 44),
                    child: Column(
                      children: [
                        CustomisedButton('Create an account', onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const CreateView();
                              },
                            ),
                          );
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dot(bool status) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: status ? Colors.black : Colors.grey,
      ),
      height: 10,
      margin: const EdgeInsets.all(6),
      width: 29.335,
    );
  }
}
