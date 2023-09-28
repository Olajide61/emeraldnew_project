import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../widgets/color.dart';
import '../../firstpage.dart';
import '../../second_page.dart';
import '../../third_page.dart';

class IndvidualCardView extends StatefulWidget {
  const IndvidualCardView({super.key, this.index = 0});

  final int index;
  @override
  State<IndvidualCardView> createState() => _IndvidualCardViewState();
}

class _IndvidualCardViewState extends State<IndvidualCardView> {
  int _currentPage = 0;
  PageController _controller = PageController(initialPage: 0);

  @override
  void initState() {
    _controller = PageController(initialPage: widget.index);
    _currentPage = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            if (_currentPage == 0) {
              Navigator.of(context).pop();
            } else {
              _controller.previousPage(
                  duration: const Duration(seconds: 1), curve: Curves.linear);
            }
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.orange,
          ),
        ),
        title: Text(
          'Buy Card',
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
                      color: _currentPage >= 0 ? AppColors.green : AppColors.w,
                    ),
                    height: 30,
                    width: 30,
                    child: Center(
                      child: _currentPage > 0
                          ? const Icon(
                              Icons.check_rounded,
                              color: Colors.white,
                              size: 20,
                            )
                          : Text(
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
                            _currentPage >= 1 ? AppColors.green : AppColors.w),
                    height: 30,
                    width: 30,
                    child: Center(
                      child: _currentPage > 1
                          ? const Icon(
                              Icons.check_rounded,
                              color: Colors.white,
                              size: 20,
                            )
                          : Text(
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
                            _currentPage >= 2 ? AppColors.green : AppColors.w),
                    height: 30,
                    width: 30,
                    child: Center(
                      child: _currentPage > 2
                          ? const Icon(
                              Icons.check_rounded,
                              color: Colors.white,
                              size: 20,
                            )
                          : Text(
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
                  controller: _controller,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (a) {
                    setState(() {
                      _currentPage = a;
                    });
                  },
                  children: [
                    FirstPage(controller: _controller),
                    SecondPage(controller: _controller),
                    ThirdPage(
                      controller: _controller,
                    ),
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
