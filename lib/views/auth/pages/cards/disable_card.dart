import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/color.dart';

class DisabledCard extends StatefulWidget {
  const DisabledCard({super.key});

  @override
  State<DisabledCard> createState() => _DisabledCardState();
}

class _DisabledCardState extends State<DisabledCard> {
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
          padding: const EdgeInsets.only(top: 53),
          child: Column(
            children: [
              Image.asset(
                'assets/images/disable.png',
                height: 225,
                width: 334.778,
              ),
              const SizedBox(height: 51.67),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.lightgrey,
                ),
                height: 96,
                width: 342,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Name',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Gboyinde Goodness',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Amount Gifted',
                                style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.grey,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '₦ ‎2555.00',
                                style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.grey,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Date created',
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '9/23/16',
                                    style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.grey,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
