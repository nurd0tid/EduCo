import 'package:educo/utils/dimensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseProjectPage extends StatelessWidget {
  const CourseProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF292D32),
                  size: Dimensions.font24,
                ),
                Icon(
                  Icons.share,
                  color: Color(0xFF292D32),
                  size: Dimensions.font24,
                ),
              ],
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
                    'Halloween poster',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: Dimensions.width20,
                            backgroundImage: AssetImage(
                              'assets/images/teacher/teacher.png'
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '@mouni',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  'Plus Jakarta Sans',
                                  fontSize: Dimensions.font14,
                                  color: Color(0xFF404653),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '11 mins ago',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font12,
                                      color: Color(0xFF9FA3A9),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  Text(
                                    'student',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font12,
                                      color: Color(0xFF9FA3A9),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        size: Dimensions.font20,
                        color: Color(0xFF585D69),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Text(
                    'Project associated with: ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font12,
                      color: Color(0xFF585D69),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Text(
                    'Comic drawing essential for everyone!',
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font16,
                      color: Color(0xFF282F3E),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Container(
                    height: Dimensions.height10 * 33,
                    width: Dimensions.width10 * 48,
                    child: Image.asset(
                      'assets/images/project_4.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Text(
                    'Adipiscing proin a consectetur id tris tique sed adipiscing lorem non ut proin et amet aliqu am nunc aenean tellus id at mi, quis ut hdrerit pus aliquam scelerisque mauris, id volutpat viver lacus\n\nTincidunt nulla enim volutpat nunc, habitant of neque non netus sodales id tortor lacus, alam integer lobortis proin quam integer pretium',
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font14,
                      color: Color(0xFF70747E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Color(0xFFCFD1D4),
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            IconsaxOutline.like_1,
                            size: Dimensions.font20,
                            color: Color(0xFF265AE8),
                          ),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          Text(
                            '21',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font12,
                              color: Color(0xFF265AE8),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      Row(
                        children: [
                          Icon(
                            IconsaxOutline.eye,
                            size: Dimensions.font20,
                            color: Color(0xFF585D69),
                          ),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          Text(
                            '150',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font12,
                              color: Color(0xFF585D69),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
