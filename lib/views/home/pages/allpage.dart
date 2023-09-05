import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/color.dart';

class AllPage extends StatefulWidget {
  const AllPage({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
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
          padding: const EdgeInsets.all(24),
          child: ListView(children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.lightblue,
                  ),
                  height: 44.774,
                  width: 44.774,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/gift.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top-up',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Text(
                      'March 2 | 3:00pm',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '+₦‎234.44',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.lightblue,
                  ),
                  height: 44.774,
                  width: 44.774,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/gift.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gift card purchase',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Text(
                      'March 2 | 3:00pm',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '-₦‎234.44',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.lightblue,
                  ),
                  height: 44.774,
                  width: 44.774,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/gift.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top-up',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Text(
                      'March 2 | 3:00pm',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '-₦‎234.44',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.lightblue,
                  ),
                  height: 44.774,
                  width: 44.774,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/gift.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gift card purchase',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Text(
                      'March 2 | 3:00pm',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '-₦‎234.44',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.lightblue,
                  ),
                  height: 44.774,
                  width: 44.774,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/gift.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top-up',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Text(
                      'March 2 | 3:00pm',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '+₦‎234.44',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.lightblue,
                  ),
                  height: 44.774,
                  width: 44.774,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/gift.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top-up',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Text(
                      'March 2 | 3:00pm',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '+₦‎234.44',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.lightblue,
                  ),
                  height: 44.774,
                  width: 44.774,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/images/gift.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top-up',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    Text(
                      'March 2 | 3:00pm',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '+₦‎234.44',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
