import 'package:educo/ui/authentication/forgot_password.dart';
import 'package:educo/ui/home/home.dart';
import 'package:educo/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              children: [
                Container(
                  child: Text(
                    'Welcome Back!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font24,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Sign in to continue!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font24,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height50,
                ),
                Container(
                  width: Dimensions.width10 * 48,
                  height: Dimensions.height30 * 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    color: Color(0xFFEDEEF0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(Dimensions.width10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png'),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        Text(
                          'Log in with Google',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF0B121F),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Container(
                  width: Dimensions.width10 * 48,
                  height: Dimensions.height30 * 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    color: Color(0xFFEDEEF0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(Dimensions.width10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/facebook.png'),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        Text(
                          'Log in with Facebook',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF0B121F),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                  ),
                  child: Text(
                    'or',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font20 - 2,
                      color: Color(0xFF585D69),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
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
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.width10 - 2),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
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
                SizedBox(
                  height: Dimensions.height20,
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
                              hintText: 'Password',
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
                  height: Dimensions.height20,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft, // Mengatur teks menjadi rata kiri
                    child: Text(
                      'Username or password incorrect.',
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font12,
                        color: Color(0xFFF04438),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Dimensions.height30 * 2.5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Container(
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
                        'Login',
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
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                    );
                  },
                  child: Text(
                    'Forgot password',
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font16,
                      color: Color(0xFF265AE8),
                      fontWeight: FontWeight.w600,
                    ),
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