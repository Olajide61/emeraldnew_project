import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:emerald_newproject/views/widgets/color.dart';
import 'package:emerald_newproject/views/widgets/customised_field.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/customised_button.dart';

class AccountDetailsView extends StatefulWidget {
  const AccountDetailsView({super.key});

  @override
  State<AccountDetailsView> createState() => _AccountDetailsViewState();
}

class _AccountDetailsViewState extends State<AccountDetailsView> {
  TextEditingController fullname = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController email = TextEditingController();
  File? image;
  String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          padding: const EdgeInsets.only(top: 42, left: 24, right: 24),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: AppColors.darkorange,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                border:
                                    Border.all(color: Colors.white, width: 3),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: image == null
                                    ? CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        imageUrl: imageUrl ??
                                            'https://firebasestorage.googleapis.com/v0/b/testisaac-4c1bf.appspot.com/o/placeholder.png?alt=media&token=38bb61c8-0807-4bfd-84b1-503f97dc9bb4',
                                        placeholder: (context, url) =>
                                            Image.asset(
                                                'assets/images/placeholder.png'),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(
                                                'assets/images/placeholder.png'),
                                        height: 100,
                                        width: 100,
                                      )
                                    : Image.file(
                                        image!,
                                        height: 100,
                                        width: 100,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                FilePickerResult? result = await FilePicker
                                    .platform
                                    .pickFiles(type: FileType.image);
                                if (result != null) {
                                  image = File(result.files.single.path!);
                                  setState(() {});
                                } else {}
                              },
                              child: CircleAvatar(
                                backgroundColor: AppColors.green,
                                child: Icon(
                                  Icons.edit,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Edit Picture',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackbb,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      CustomisedField(
                        controller: fullname,
                        hintText: 'Full name',
                        textInputType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomisedField(
                        hintText: 'Phone Number',
                        textInputType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        controller: phonenumber,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomisedField(
                        hintText: 'Email',
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        controller: email,
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      CustomisedButton('Save',
                          onPressed: () {},
                          buttonColor: AppColors.orange,
                          textColor: AppColors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
