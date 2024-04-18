import 'dart:io';

import 'package:educo/utils/dimensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class AddProjectPage extends StatefulWidget {
  const AddProjectPage({super.key});

  @override
  State<AddProjectPage> createState() => _AddProjectPageState();
}

class _AddProjectPageState extends State<AddProjectPage> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    // ToastContext.init(context);

    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF292D32),
              size: Dimensions.font24,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add your project',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font16 + 2,
                        color: Color(0xFF0B121F),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    _image != null
                        ? Container(
                            height: Dimensions.height10 * 15.2,
                            width: Dimensions.width10 * 16,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
                            clipBehavior: Clip.antiAlias,
                            child: Stack(
                              children: [
                                Container(
                                  height: Dimensions.height10 * 15.2,
                                  width: Dimensions.width10 * 16,
                                  child: Image.file(
                                    _image!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _image = null;
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      top: Dimensions.width10,
                                      right: Dimensions.width10,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        IconsaxBold.close_circle,
                                        color: Color(0xFFB8C1CC),
                                        size: Dimensions.font24,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SizedBox(),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Project name',
                        labelStyle: TextStyle(color: Color(0xFF585D69)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFCFD1D4))),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFCFD1D4))),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    TextFormField(
                      maxLines: 8,
                      decoration: InputDecoration(
                        labelText: 'Description',
                        labelStyle: TextStyle(color: Color(0xFF585D69)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFCFD1D4))),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFFCFD1D4))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          _openGallery();
        },
        child: Container(
          margin: EdgeInsets.only(
            left: Dimensions.width20,
            right: Dimensions.width20,
            bottom: Dimensions.height20,
            top: Dimensions.height20,
          ),
          width: Dimensions.width10 * 48,
          height: Dimensions.height10 * 6,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Color(0xFFEDEEF0)),
          child: Padding(
            padding: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height10,
                top: Dimensions.height10),
            child: Row(
              children: [
                Icon(
                  IconsaxOutline.add_square,
                  size: Dimensions.font24,
                ),
                SizedBox(
                  width: Dimensions.width30,
                ),
                Text(
                  'add from gallery',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Plus Jakarta Sans',
                    fontSize: Dimensions.font16,
                    color: Color(0xFF0B121F),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _openGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
      Fluttertoast.showToast(
        msg: 'Successfully upload image',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Color(0xFFA0FFAA),
        textColor: Colors.black54,
        fontSize: Dimensions.font16
      );

    }
  }

  // void showToast(String msg, {int? duration, int? gravity}) {
  //   Toast.show(
  //     msg,
  //     co
  //     duration: duration,
  //     gravity: gravity,
  //   );
  // }
}
