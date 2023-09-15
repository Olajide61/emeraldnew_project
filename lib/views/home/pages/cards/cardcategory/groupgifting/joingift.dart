import 'package:emerald_newproject/views/home/pages/cards/cardcategory/groupgifting/groupgifts_details.dart';
import 'package:emerald_newproject/views/widgets/customised_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../widgets/color.dart';

class JoinGiftView extends StatefulWidget {
  const JoinGiftView({super.key});

  @override
  State<JoinGiftView> createState() => _JoinGiftViewState();
}

class _JoinGiftViewState extends State<JoinGiftView> {
  final List<String> image = ['assets/images/head.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.orange,
          ),
        ),
        title: Text(
          'Group Gifting',
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
        child: Column(
          children: [
            const SizedBox(height: 357),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: CustomisedButton('Join', onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const GroupDetailsView();
                }));
              }, buttonColor: AppColors.orange, textColor: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
