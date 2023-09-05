import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../widgets/color.dart';
import '../../../../../widgets/customised_button.dart';

class GiftingCreatedView extends StatefulWidget {
  const GiftingCreatedView({super.key});

  @override
  State<GiftingCreatedView> createState() => _GiftingCreatedViewState();
}

class _GiftingCreatedViewState extends State<GiftingCreatedView> {
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 98),
                child: Image.asset(
                  'assets/images/created.png',
                  height: 264,
                  width: 219.135,
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Group Gifting has\n been successfully created',
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 42,
              ),
              CustomisedButton('Share', onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(22),
                  )),
                  context: context,
                  builder: (BuildContext builder) {
                    return Container(
                      height: 315,
                      width: 389,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 23, right: 25.5, top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Share',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset(
                                    'assets/images/cancel.png',
                                    height: 12,
                                    width: 12,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      height: 53.935,
                                      width: 53.935,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.51),
                                        child: Image.asset(
                                            'assets/images/whatsapp.png',
                                            height: 24,
                                            width: 24),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11.05,
                                    ),
                                    Text(
                                      'Whatsapp',
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                          fontSize: 11.441,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 41,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      height: 53.935,
                                      width: 53.935,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.51),
                                        child: Image.asset(
                                            'assets/images/x.png',
                                            height: 24,
                                            width: 24),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11.05,
                                    ),
                                    Text(
                                      'Twitter',
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                          fontSize: 11.441,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 41,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      height: 53.935,
                                      width: 53.935,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.51),
                                        child: Image.asset(
                                            'assets/images/f.png',
                                            height: 24,
                                            width: 24),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11.05,
                                    ),
                                    Text(
                                      'Facebook',
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                          fontSize: 11.441,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 50.01,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      height: 53.935,
                                      width: 53.935,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.51),
                                        child: Image.asset(
                                            'assets/images/l.png',
                                            height: 24,
                                            width: 24),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 11.05,
                                    ),
                                    Text(
                                      'Linkedin',
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                          fontSize: 11.441,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 36,
                            ),
                            Text(
                              'Group Gifting Link',
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.darkGrey),
                              ),
                            ),
                            const SizedBox(height: 1),
                            Container(
                              height: 46,
                              width: 342,
                              decoration: BoxDecoration(
                                color: AppColors.lightgrey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, right: 3),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/att.png',
                                      height: 24,
                                      width: 24,
                                    ),
                                    Text(
                                      'https://emeraldgiftcards.com/gg/EGLINK-7854X',
                                      style: GoogleFonts.openSans(
                                        textStyle: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.dbs),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: AppColors.green),
                                      width: 60,
                                      height: 38,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 11, right: 11),
                                        child: Text(
                                          'Copy',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                color: AppColors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              }, buttonColor: AppColors.orange, textColor: AppColors.white),
              const SizedBox(
                height: 19,
              ),
              CustomisedButton('Go to Dashboard',
                  onPressed: () {},
                  buttonColor: AppColors.white,
                  borderColor: AppColors.darkyorange,
                  textColor: AppColors.darkorange),
            ],
          ),
        ),
      ),
    );
  }
}
