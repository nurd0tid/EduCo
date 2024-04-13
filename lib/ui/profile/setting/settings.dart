import 'package:educo/ui/profile/setting/password_change.dart';
import 'package:educo/ui/profile/setting/profile_settings.dart';
import 'package:educo/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xFF292D32),
                        size: Dimensions.font24,
                      ),
                    ),
                    SizedBox(
                      width: Dimensions.width50 * 2.3,
                    ),
                    Container(
                      child: Text(
                        'Settings',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Plus Jakarta Sans',
                          fontSize: Dimensions.font16 + 2,
                          color: Color(0xFF101828),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Membership',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font14,
                        color: Color(0xFF70747E),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Color(0xFFCFD1D4)),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Free membership user',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font16 + 2,
                                color: Color(0xFF404653),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              decoration:
                                  BoxDecoration(color: Color(0xFFEDEEF0), borderRadius: BorderRadius.circular(4)),
                              child: Container(
                                height: Dimensions.height10 * 4,
                                width: Dimensions.width10 * 8,
                                child: Padding(
                                  padding: EdgeInsets.all(Dimensions.width10),
                                  child: Text(
                                    'upgrade',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font14,
                                      color: Color(0xFF282F3E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font14,
                        color: Color(0xFF70747E),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Color(0xFFCFD1D4)),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Profile settings',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font16 + 2,
                                color: Color(0xFF404653),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProfileSettingsPage()),
                                );
                              },
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Color(0xFFEDEEF0), borderRadius: BorderRadius.circular(4)),
                                child: Container(
                                  height: Dimensions.height10 * 4,
                                  width: Dimensions.width10 * 8,
                                  child: Padding(
                                    padding: EdgeInsets.all(Dimensions.width10),
                                    child: Text(
                                      'manage',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.getFont(
                                        'Plus Jakarta Sans',
                                        fontSize: Dimensions.font14,
                                        color: Color(0xFF282F3E),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Notification',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font14,
                        color: Color(0xFF70747E),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Color(0xFFCFD1D4)),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Personalized Notifications',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font16 + 2,
                                color: Color(0xFF404653),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Switch(
                              value: true,
                              onChanged: (value) {
                                print('clicked');
                              },
                              activeTrackColor: Color(0xFF7DB86E),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Security',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font14,
                        color: Color(0xFF70747E),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Color(0xFFCFD1D4)),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Password change',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font16 + 2,
                                color: Color(0xFF404653),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PasswordChangePage()),
                                );
                              },
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Color(0xFFEDEEF0), borderRadius: BorderRadius.circular(4)),
                                child: Container(
                                  height: Dimensions.height10 * 4,
                                  width: Dimensions.width10 * 8,
                                  child: Padding(
                                    padding: EdgeInsets.all(Dimensions.width10),
                                    child: Text(
                                      'manage',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.getFont(
                                        'Plus Jakarta Sans',
                                        fontSize: Dimensions.font14,
                                        color: Color(0xFF282F3E),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Help & Support',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font14,
                        color: Color(0xFF70747E),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'About Us',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Plus Jakarta Sans',
                                    fontSize: Dimensions.font16 + 2,
                                    color: Color(0xFF404653),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xFF404653),
                                  size: Dimensions.font24,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Terms & Condition',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Plus Jakarta Sans',
                                    fontSize: Dimensions.font16 + 2,
                                    color: Color(0xFF404653),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xFF404653),
                                  size: Dimensions.font24,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Container(
                            margin: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Privacy policy',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Plus Jakarta Sans',
                                    fontSize: Dimensions.font16 + 2,
                                    color: Color(0xFF404653),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xFF404653),
                                  size: Dimensions.font24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height50,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Sign out',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font16,
                      color: Color(0xFF265AE8),
                      fontWeight: FontWeight.w600,
                    ),
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
