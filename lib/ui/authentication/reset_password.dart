import 'package:educo/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(
            top: Dimensions.height50,
            bottom: Dimensions.height50,
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
                  'Reset your password',
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
                height: Dimensions.height30 * 2,
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
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.width10 - 2),
                        child: TextField(
                          obscureText: true, // Menyembunyikan teks password
                          decoration: InputDecoration(
                            hintText: 'Enter new password',
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
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.visibility_outlined,
                        color: Color(0xFF70747E),
                        size: Dimensions.font24,
                      ), // Ikonya berdasarkan kebutuhan Anda
                      onPressed: () {
                        // Tambahkan logika untuk mengubah obscureText saat ikon ditekan
                        // Misalnya, Anda bisa menggunakan setState() untuk mengubah nilai variabel yang mengontrol obscureText
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft, // Mengatur teks menjadi rata kiri
                  child: Text(
                    'Must containt 8 character',
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
                height: Dimensions.height30,
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
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.width10 - 2),
                        child: TextField(
                          obscureText: true, // Menyembunyikan teks password
                          decoration: InputDecoration(
                            hintText: 'Confirm password',
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
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.visibility_outlined,
                        color: Color(0xFF70747E),
                        size: Dimensions.font24,
                      ), // Ikonya berdasarkan kebutuhan Anda
                      onPressed: () {
                        // Tambahkan logika untuk mengubah obscureText saat ikon ditekan
                        // Misalnya, Anda bisa menggunakan setState() untuk mengubah nilai variabel yang mengontrol obscureText
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height10,
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft, // Mengatur teks menjadi rata kiri
                  child: Text(
                    'Must match both password',
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
                height: Dimensions.height30 * 2,
              ),
              Container(
                width: Dimensions.width10 * 48,
                height: Dimensions.height30 * 2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  color: Color(0xFF265AE8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(Dimensions.width16),
                  child: Text(
                    'Reset',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
