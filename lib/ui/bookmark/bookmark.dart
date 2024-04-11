import 'package:educo/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.only(
            top: Dimensions.height50,
            bottom: Dimensions.height50,
            left: Dimensions.width50,
            right: Dimensions.width50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/nothing_saved.png'),
              SizedBox(
                height: Dimensions.height45,
              ),
              Text(
                'Nothing is here!',
                style: GoogleFonts.getFont(
                  'Plus Jakarta Sans',
                  fontSize: Dimensions.font20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Text(
                textAlign: TextAlign.center,
                'We found nothing in your save list! Want to have some? Try something best',
                style: GoogleFonts.getFont(
                  'Plus Jakarta Sans',
                  fontSize: Dimensions.font14,
                  color: Color(0xFF404653),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: Dimensions.height50,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xFFEDEEF0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height10,
                    bottom: Dimensions.height10,
                  ),
                  child: Text(
                    'Recommended',
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}