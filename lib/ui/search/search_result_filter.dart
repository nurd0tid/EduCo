import 'package:educo/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFilterPage extends StatelessWidget {
  const SearchFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Sort by',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Plus Jakarta Sans',
                          fontSize: Dimensions.font16,
                          color: Color(0xFF282F3E),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {
                            print('clicked');
                          },
                          activeColor: Color(0xFF3F79EB),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        Text(
                          'Free classes',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                            print('clicked');
                          },
                          activeColor: Color(0xFF3F79EB),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        Text(
                          'Premium classes',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                            print('clicked');
                          },
                          activeColor: Color(0xFF3F79EB),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        Text(
                          'All',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Level',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Plus Jakarta Sans',
                          fontSize: Dimensions.font16,
                          color: Color(0xFF282F3E),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                            print('clicked');
                          },
                          activeColor: Color(0xFF3F79EB),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        Text(
                          'Beginner',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                            print('clicked');
                          },
                          activeColor: Color(0xFF3F79EB),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        Text(
                          'Intermidiate',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                            print('clicked');
                          },
                          activeColor: Color(0xFF3F79EB),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        Text(
                          'Advance',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Duration',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Plus Jakarta Sans',
                          fontSize: Dimensions.font16,
                          color: Color(0xFF282F3E),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                            print('clicked');
                          },
                          activeColor: Color(0xFF3F79EB),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        Text(
                          '0-1 Hour',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                            print('clicked');
                          },
                          activeColor: Color(0xFF3F79EB),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        Text(
                          '1-3 Hour',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {
                            print('clicked');
                          },
                          activeColor: Color(0xFF3F79EB),
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        Text(
                          '3+ Hour',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font16,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height30,
                ),
                Row(
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
                          'Reset',
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
                          'Apply',
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
