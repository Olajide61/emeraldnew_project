import 'package:emerald_newproject/views/home/pages/allpage.dart';
import 'package:emerald_newproject/views/home/pages/purchase_page.dart';
import 'package:emerald_newproject/views/home/pages/topup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/color.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  'History',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 44,
                      width: 342,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.orange),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8)),
                        color: AppColors.white,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              _controller.animateToPage(0,
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.linear);
                            },
                            child: Container(
                              height: 44,
                              width: 114,
                              decoration: BoxDecoration(
                                color: _currentPage == 0
                                    ? AppColors.pryorange
                                    : AppColors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    topRight: Radius.circular(6),
                                    bottomLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6)),
                              ),
                              child: Center(
                                child: Text(
                                  'All',
                                  style: GoogleFonts.openSans(
                                    color: AppColors.blackb,
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _controller.animateToPage(1,
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.linear);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: _currentPage == 1
                                    ? AppColors.pryorange
                                    : AppColors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    topRight: Radius.circular(6),
                                    bottomLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6)),
                              ),
                              height: 44,
                              width: 114,
                              child: Center(
                                child: Text(
                                  'Top-up',
                                  style: GoogleFonts.openSans(
                                    color: AppColors.blackb,
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              _controller.animateToPage(2,
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.linear);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: _currentPage == 2
                                    ? AppColors.pryorange
                                    : AppColors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    topRight: Radius.circular(6),
                                    bottomLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6)),
                              ),
                              height: 44,
                              width: 114,
                              child: Center(
                                child: Text(
                                  'Purchase',
                                  style: GoogleFonts.openSans(
                                    color: AppColors.blackb,
                                    textStyle: const TextStyle(
                                      fontSize: 14,
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
                  ),
                ],
              ),
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: (a) {
                    _currentPage = a;
                    setState(() {});
                  },
                  children: const [
                    AllPage(),
                    TopupPage(),
                    PurchasePage(),
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
