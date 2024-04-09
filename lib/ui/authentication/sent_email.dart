import 'package:educo/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SentEmailPage extends StatelessWidget {
  const SentEmailPage({super.key});

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
                  Text(
                    'Check your email',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font26,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Text(
                    'We’ve sent a password recover instruction to your email',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font14,
                      color: Color(0xFF70747E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height30 * 2,
                  ),
                  Container(
                    width: Dimensions.width10 * 23,
                    height: Dimensions.height10 * 21,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/sent_email.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height30 * 2,
                  ),
                  GestureDetector(
                    onTap: () {},
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
                          'Open email app',
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
                  Text(
                    'Will do it later',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font16,
                      color: Color(0xFF265AE8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height30 * 2,
                  ),
                  Text(
                    'Didn’t get any email? Check your spam folder or try again with a valid email.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font14,
                      color: Color(0xFF70747E),
                      fontWeight: FontWeight.w400,
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