import 'package:educo/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                Container(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF292D32),
                    size: Dimensions.font24,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Container(
                  child: Text(
                    'Profile Settings',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font16 + 2,
                      color: Color(0xFF101828),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height50,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                        width: Dimensions.width10 * 12,
                        height: Dimensions.height10 * 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.width10 * 6),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/profile.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      Text(
                        'Change profile picture',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Plus Jakarta Sans',
                          fontSize: Dimensions.font14,
                          color: Color(0xFF265AE8),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: Dimensions.height45,
                ),
                Container(
                  width: Dimensions.width10 * 48,
                  height: Dimensions.height45 - 2,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFCFD1D4),
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'New username',
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font16 + 2,
                        color: Color(0xFF70747E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft, // Mengatur teks menjadi rata kiri
                    child: Text(
                      'this username is already taken',
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font12,
                        color: Color(0xFFF04438),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height10 * 25,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: Dimensions.width10 * 8.8,
                        height: Dimensions.width10 * 4.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.transparent,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Cancel',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font16,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      Container(
                        width: Dimensions.width10 * 8.8,
                        height: Dimensions.width10 * 4.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFF265AE8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Save',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font16,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}