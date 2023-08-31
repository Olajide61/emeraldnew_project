import 'package:emerald_newproject/views/home/pages/cards/active_card.dart';
import 'package:emerald_newproject/views/home/pages/cards/disable_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/color.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
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
                  'Cards',
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
              Container(
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
                            'Active',
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
                            'Disabled',
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
                    ActiveCard(),
                    DisabledCard(),
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
