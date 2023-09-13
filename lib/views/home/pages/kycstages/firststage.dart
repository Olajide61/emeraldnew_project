import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/color.dart';
import '../../../widgets/customised_button.dart';

class FirstStage extends StatefulWidget {
  const FirstStage({super.key});

  @override
  State<FirstStage> createState() => _FirstStageState();
}

class _FirstStageState extends State<FirstStage> {
  int _currentPage = 0;
  final PageController _controller = PageController(initialPage: 0);
  File? image;
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
          padding: const EdgeInsets.only(top: 32, right: 24),
          child: Column(
            children: [
              Text(
                'Stage 1: Live Face shot',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              ClipOval(
                child: image == null
                    ? Image.asset(
                        'assets/images/live.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      )
                    : Image.file(
                        image!,
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
              ),
              const SizedBox(height: 31.5),
              InkWell(
                onTap: () async {
                  final FilePickerResult? result =
                      await FilePicker.platform.pickFiles(type: FileType.image);
                  if (result != null) {
                    image = File(result.files.first.path!);

                    setState(() {});
                  } else {}
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.green),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 43,
                  width: 207,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Capture',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: AppColors.green,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 100.5,
              ),
              Text(
                'By clicking on Next, its saves and next',
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackbb,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomisedButton('Next', onPressed: () {
                if (_currentPage > 2) {
                  _controller.animateToPage(_currentPage + 1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear);
                  setState(() {
                    _currentPage++;
                  });
                } else {}
              }, buttonColor: AppColors.pink, textColor: AppColors.white),
            ],
          ),
        ),
      ),
    );
  }
}
