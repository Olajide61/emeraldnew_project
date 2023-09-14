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
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
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
        elevation: 0,
        backgroundColor: Colors.white,
      ),
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
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPage == 0 ? AppColors.green : AppColors.w,
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
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: AppColors.blackb),
                      height: 1,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _currentPage == 1 ? AppColors.green : AppColors.w),
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
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: AppColors.blackb),
                      height: 1,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _currentPage == 2 ? AppColors.green : AppColors.w),
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
                ],
              ),
              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _controller,
                  onPageChanged: (a) {
                    setState(() {
                      _currentPage = a;
                    });
                  },
                  children: [
                    FirstStage(controller: _controller),
                    SecondStage(controller: _controller),
                    ThirdStage(controller: _controller),
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
