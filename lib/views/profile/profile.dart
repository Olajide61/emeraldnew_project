import 'package:emerald_newproject/core/apis/local_auth_api.dart';
import 'package:emerald_newproject/views/profile/accountdetails_view.dart';
import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool authenticated = false;
  bool _isFingerprintEnabled = false;

  final LocalAuthentication _localAuthentication = LocalAuthentication();

  @override
  void initState() {
    super.initState();
    _checkFingerprint();
  }

  Future<void> _checkFingerprint() async {
    final hasFingerprint = await _localAuthentication.canCheckBiometrics;
    if (hasFingerprint) {
      final isEnabled = await _localAuthentication.isDeviceSupported();
      setState(() {
        _isFingerprintEnabled = isEnabled;
      });
    }
  }

  void _toggleFingerprint(bool value) {
    setState(() {
      _isFingerprintEnabled = value;
    });
    // You can perform actions based on whether the user enabled or disabled fingerprint here.
  }

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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                'Profile',
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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const AccountDetailsView();
                  }),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          const AssetImage('assets/images/head.png'),
                      child: Container(
                        height: 75,
                        width: 75,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Courtney Henry',
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                        Text(
                          'Account Details',
                          textAlign: TextAlign.start,
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
                    Image.asset(
                      'assets/images/arrow.png',
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 53.39,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
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
                            'Manage Gift Card',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                          Text(
                            'Control your debit card easily',
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
                      Image.asset(
                        'assets/images/arrow.png',
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.77,
                  ),
                  InkWell(
                    onTap: () async {
                      final authenticate = await LocalAuth.authenticate();
                      setState(() {
                        authenticated = authenticate;
                      });
                    },
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.pink,
                          ),
                          height: 44.774,
                          width: 44.774,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/security.png',
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
                              'Security',
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            Text(
                              'Robust protection for your data',
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
                        Switch(
                            value: _isFingerprintEnabled,
                            onChanged: _toggleFingerprint)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.77,
                  ),
                  InkWell(
                    onTap: () {
                      _launchURL('www.google.com');
                    },
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.lightpink,
                          ),
                          height: 44.774,
                          width: 44.774,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/terms.png',
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
                              'Terms of Service',
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            Text(
                              'Understand your rights here',
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
                        Image.asset(
                          'assets/images/arrow.png',
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.77,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.purple,
                        ),
                        height: 44.774,
                        width: 44.774,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/support.png',
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
                            'Support',
                            style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                          Text(
                            'Helpful assistance available anytime',
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
                      Image.asset(
                        'assets/images/arrow.png',
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.77,
                  ),
                  InkWell(
                    onTap: () {
                      Share.share('check out my website https://example.com',
                          subject: 'Look what I made!');
                    },
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.blue,
                          ),
                          height: 44.774,
                          width: 44.774,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/share.png',
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
                              'Share',
                              style: GoogleFonts.openSans(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                            Text(
                              'Spread joy, earn rewards together',
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
                        Image.asset(
                          'assets/images/arrow.png',
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 53.52,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 38,
                    width: 168,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.lightOrange),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Out',
                        style: TextStyle(
                            color: AppColors.lightOrange,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: 'https', host: url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'can not launch url';
    }
  }
}
