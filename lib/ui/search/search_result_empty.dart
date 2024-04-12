import 'package:educo/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResultEmptyPage extends StatelessWidget {
  const SearchResultEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          'We found nothing in your search? Try something best',
          style: GoogleFonts.getFont(
            'Plus Jakarta Sans',
            fontSize: Dimensions.font14,
            color: Color(0xFF404653),
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
