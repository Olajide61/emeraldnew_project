import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:emerald_newproject/views/auth/pages/kycstages/kycsuccessful.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/color.dart';
import '../../../widgets/customised_button.dart';

class ThirdStage extends StatefulWidget {
  const ThirdStage({super.key, required this.controller});
  final PageController controller;
  @override
  State<ThirdStage> createState() => _ThirdStageState();
}

class _ThirdStageState extends State<ThirdStage> {
  File? image1;
  File? image2;
  String? imageUrl;
  String? selectedValue;

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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 34),
              child: Text(
                'Stage 3: Document Upload \n(e.g, NIN, Voter’s card e.t.c.)',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  color: AppColors.black,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              color: AppColors.lightgrey,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: DropdownButton<String>(
                value: selectedValue,
                isExpanded: true,
                hint: const Text('Document Type'),
                underline: const SizedBox(),
                icon: Padding(
                  padding: const EdgeInsets.all(11),
                  child: ImageIcon(
                    const AssetImage('assets/images/drop.png'),
                    color: AppColors.black,
                    size: 24,
                  ),
                ),
                items: [
                  'NIN',
                  'International Passport',
                  'Voters card',
                ].map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(left: 44),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () async {
                      FilePickerResult? result = await FilePicker.platform
                          .pickFiles(type: FileType.image);
                      if (result != null) {
                        image1 = File(result.files.single.path!);
                        setState(() {});
                      } else {}
                    },
                    child: Text(
                      'Upload the front of your document',
                      style: GoogleFonts.openSans(
                        color: AppColors.black,
                        textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    dashPattern: const [10, 10],
                    color: AppColors.green,
                    child: SizedBox(
                      height: 205,
                      width: 302,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 17),
                        child: Column(
                          children: [
                            ClipRRect(
                              child: image1 == null
                                  ? Image.asset(
                                      'assets/images/up.png',
                                      height: 54,
                                      width: 54,
                                    )
                                  : Image.file(
                                      image1!,
                                      height: 54,
                                      width: 54,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                            InkWell(
                              onTap: () async {
                                final FilePickerResult? result =
                                    await FilePicker.platform
                                        .pickFiles(type: FileType.image);
                                if (result != null) {
                                  image1 = File(result.files.first.path!);

                                  setState(() {});
                                } else {}
                              },
                              child: Text(
                                'Upload your file',
                                style: GoogleFonts.openSans(
                                  color: AppColors.green,
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Drag & drop your file here',
                              style: GoogleFonts.openSans(
                                color: AppColors.green,
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'OR',
                              style: GoogleFonts.openSans(
                                color: AppColors.green,
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              height: 31,
                              width: 143,
                              decoration: BoxDecoration(
                                color: AppColors.green,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7.5),
                                child: Text(
                                  'Browse files',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(
                                    color: AppColors.white,
                                    textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Upload the front of your document',
                    style: GoogleFonts.openSans(
                      color: AppColors.black,
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    dashPattern: const [10, 10],
                    color: AppColors.green,
                    child: SizedBox(
                      height: 205,
                      width: 302,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 17),
                        child: Column(
                          children: [
                            ClipRRect(
                              child: image2 == null
                                  ? Image.asset(
                                      'assets/images/up.png',
                                      height: 54,
                                      width: 54,
                                    )
                                  : Image.file(
                                      image2!,
                                      height: 54,
                                      width: 54,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                            InkWell(
                              onTap: () async {
                                final FilePickerResult? result =
                                    await FilePicker.platform
                                        .pickFiles(type: FileType.image);
                                if (result != null) {
                                  image2 = File(result.files.first.path!);

                                  setState(() {});
                                } else {}
                              },
                              child: Text(
                                'Upload your file',
                                style: GoogleFonts.openSans(
                                  color: AppColors.green,
                                  textStyle: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Drag & drop your file here',
                              style: GoogleFonts.openSans(
                                color: AppColors.green,
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'OR',
                              style: GoogleFonts.openSans(
                                color: AppColors.green,
                                textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
                              height: 31,
                              width: 143,
                              decoration: BoxDecoration(
                                color: AppColors.green,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7.5),
                                child: Text(
                                  'Browse files',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(
                                    color: AppColors.white,
                                    textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 48),
            CustomisedButton(
              'Save',
              onPressed: selectedValue == null
                  ? null
                  : () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const KycSuccessfulView();
                        }),
                      );
                    },
              buttonColor: AppColors.orange,
              textColor: AppColors.white,
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
