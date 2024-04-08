import 'package:educo/ui/authentication/register_form.dart';
import 'package:flutter/material.dart';
import 'package:educo/utils/dimensions.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  'Welcome!',
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
                  'Sign up to continue!',
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
                        'Sign up with Google',
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
                        'Sign up with Facebook',
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterFormPage()),
                  );
                },
                child: Container(
                  width: Dimensions.width10 * 48,
                  height: Dimensions.height30 * 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    color: Color(0xFFEDEEF0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(Dimensions.width16),
                    child: Text(
                      'Sign up with email',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font16,
                        color: Color(0xFF0B121F),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                ),
                child: Text(
                  'By signing up you are agreed with our friendly terms and condition.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Plus Jakarta Sans',
                    fontSize: Dimensions.font14,
                    color: Color(0xFF404653),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height50,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                ),
                child: Text(
                  'Already have an account?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Plus Jakarta Sans',
                    fontSize: Dimensions.font16,
                    color: Color(0xFF383838),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                ),
                child: Text(
                  'Sign in',
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
    );
  }
}