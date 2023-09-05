import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/color.dart';
import 'kycstages/firststage.dart';
import 'kycstages/secondstage.dart';
import 'kycstages/thirdstage.dart';

class KycStartView extends StatefulWidget {
  const KycStartView({super.key});

  @override
  State<KycStartView> createState() => _KycStartViewState();
}

class _KycStartViewState extends State<KycStartView> {
  int _currentPage = 0;
  final PageController _controller = PageController();
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
          padding: const EdgeInsets.only(left: 24, top: 49),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: AppColors.darkorange,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 128,
                  ),
                  Text(
                    'KYC',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 32),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        _controller.animateToPage(0,
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.linear);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              _currentPage == 0 ? AppColors.green : AppColors.w,
                        ),
                        height: 30,
                        width: 30,
                        child: Center(
                          child: Text(
                            '1',
                            style: GoogleFonts.openSans(
                              color: AppColors.white,
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(color: AppColors.blackb),
                      width: 70,
                      height: 1,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        _controller.animateToPage(1,
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.linear);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == 1
                                ? AppColors.green
                                : AppColors.w),
                        height: 30,
                        width: 30,
                        child: Center(
                          child: Text(
                            '2',
                            style: GoogleFonts.openSans(
                              color: AppColors.white,
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(color: AppColors.blackb),
                      width: 70,
                      height: 1,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        _controller.animateToPage(2,
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.linear);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentPage == 2
                                ? AppColors.green
                                : AppColors.w),
                        height: 30,
                        width: 30,
                        child: Center(
                          child: Text(
                            '3',
                            style: GoogleFonts.openSans(
                              color: AppColors.white,
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: (a) {
                    _currentPage = a;
                    setState(() {});
                  },
                  children: const [
                    FirstStage(),
                    SecondStage(),
                    ThirdStage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
