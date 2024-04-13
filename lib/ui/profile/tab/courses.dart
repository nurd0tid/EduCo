import 'package:educo/utils/dimensions.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursesTabPage extends StatelessWidget {
  CoursesTabPage({super.key});

    final List<Map<String, dynamic>> dataSearch = [
    {
      'imagePaths': 'assets/images/result.png',
      'title': 'Adobe illustrator for all beginner artist',
      'author': 'Samuel Do',
      'totalStudent': '4k',
      'rating': '4.7',
      'category': 'Graphic Illustration',
    },
    {
      'imagePaths': 'assets/images/result_1.png',
      'title': 'Digital illustration technique for procrete',
      'author': 'Sarrah Morry',
      'totalStudent': '2k',
      'rating': '4.0',
      'category': 'Graphic Illustration',
    },
    {
      'imagePaths': 'assets/images/result_2.png',
      'title': 'Learn how to draw cartoon face in easy way!',
      'author': 'Sarrah Morry',
      'totalStudent': '1k',
      'rating': '4.2',
      'category': 'Graphic Illustration',
    },
    {
      'imagePaths': 'assets/images/result_3.png',
      'title': 'Sketch book essential for everyone!',
      'author': 'Samuel Do',
      'totalStudent': '4k',
      'rating': '4.9',
      'category': 'Graphic Illustration',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: dataSearch.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(
            bottom: Dimensions.height20,
          ),
          child: Row(
            children: [
              Container(
                width: Dimensions.width10 * 8,
                height: Dimensions.height10 * 9.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.amberAccent,
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  dataSearch[index]['imagePaths'],
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: Dimensions.width10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataSearch[index]['title'],
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font16,
                        color: Color(0xFF282F3E),
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      dataSearch[index]['author'],
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font12,
                        color: Color(0xFF282F3E),
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: Dimensions.width10 / 2,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              IconsaxOutline.user,
                              size: Dimensions.font14,
                              color: Color(0xFF70747E),
                            ),
                            SizedBox(
                              width: Dimensions.width10 / 2,
                            ),
                            Text(
                              '${dataSearch[index]['totalStudent']} student',
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font12,
                                color: Color(0xFF70747E),
                                fontWeight: FontWeight.w300,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        Row(
                          children: [
                            Icon(
                              EvaIcons.star,
                              size: Dimensions.font14,
                              color: Color(0xFFFFA927),
                            ),
                            SizedBox(
                              width: Dimensions.width10 / 2,
                            ),
                            Text(
                              dataSearch[index]['rating'],
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font12,
                                color: Color(0xFF70747E),
                                fontWeight: FontWeight.w300,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}