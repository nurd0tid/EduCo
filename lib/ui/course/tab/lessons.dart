import 'package:educo/utils/dimensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LesssonsTabPage extends StatelessWidget {
  LesssonsTabPage({super.key});

  final List<Map<String, dynamic>> lessons = [
    {
      'imagePaths': 'assets/images/lessons.png',
      'title': 'Introduction to cimics drawing course',
      'description':
          'Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orci eu soft lectus nibh vulputate urna ut sed neque'
    },
    {
      'imagePaths': 'assets/images/lessons_1.png',
      'title': 'Nulla sit mauris nunc of suscipit',
      'description':
          'Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orci eu soft lectus nibh vulputate urna ut sed neque'
    },
    {
      'imagePaths': 'assets/images/lessons_2.png',
      'title': 'Tellus elementum jonys commodo nibh',
      'description':
          'Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orci eu soft lectus nibh vulputate urna ut sed neque'
    },
    {
      'imagePaths': 'assets/images/lessons.png',
      'title': 'Et semper vivamus sceler isq ue purus velit',
      'description':
          'Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orci eu soft lectus nibh vulputate urna ut sed neque'
    },
    {
      'imagePaths': 'assets/images/lessons_3.png',
      'title': 'Aliquam praesent velit pellentesque donec',
      'description':
          'Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orci eu soft lectus nibh vulputate urna ut sed neque'
    },
    {
      'imagePaths': 'assets/images/lessons_4.png',
      'title': 'Introduction to cimics drawing course',
      'description':
          'Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orci eu soft lectus nibh vulputate urna ut sed neque'
    },
  ];

  final List<Map<String, dynamic>> documentDownload = [
    {'title': 'Practice class sketches', 'extensions': '.img', 'size': '4Mb'},
    {'title': 'Design presentation', 'extensions': '.pdf', 'size': '6Mb'},
    {'title': 'Home work sheets', 'extensions': '.xlsx', 'size': '4Mb'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          itemCount: lessons.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: Dimensions.width10 * 14,
                      height: Dimensions.height10 * 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        lessons[index]['imagePaths'],
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
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            lessons[index]['title'].toString(),
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font16,
                              color: Color(0xFF282F3E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height10 / 2,
                          ),
                          Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            'Lesson ${index + 1}',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF585D69),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                Text(
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  lessons[index]['description'].toString(),
                  style: GoogleFonts.getFont(
                    'Plus Jakarta Sans',
                    fontSize: Dimensions.font12,
                    color: Color(0xFF70747E),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height20,
                )
              ],
            );
          },
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Text(
          'Resources for download',
          style: GoogleFonts.getFont(
            'Plus Jakarta Sans',
            fontSize: Dimensions.font16,
            color: Color(0xFF0B121F),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        ListView.builder(
          itemCount: documentDownload.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                bottom: Dimensions.height20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: Dimensions.width10 * 3.8,
                        height: Dimensions.height10 * 3.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4), 
                          color: 
                          documentDownload[index]['extensions'] == '.pdf' ? Color(0xFFFF6363) :
                          documentDownload[index]['extensions'] == '.img' ? Color(0xFF4D71CF) :
                          documentDownload[index]['extensions'] == '.xlsx' ? Color(0xFF4DCF6A) :
                          Colors.black
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: Dimensions.width10,
                            bottom: Dimensions.width10,
                          ),
                          child: Text(
                            documentDownload[index]['extensions'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font12 - 2,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.width10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            documentDownload[index]['title'],
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF282F3E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                documentDownload[index]['extensions'],
                                style: GoogleFonts.getFont(
                                  'Plus Jakarta Sans',
                                  fontSize: Dimensions.font12 - 1,
                                  color: Color(0xFF888C94),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: Dimensions.width10,
                              ),
                              Text(
                                documentDownload[index]['size'],
                                style: GoogleFonts.getFont(
                                  'Plus Jakarta Sans',
                                  fontSize: Dimensions.font12 - 1,
                                  color: Color(0xFF888C94),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    IconsaxOutline.document_download,
                    color: Color(0xFF888C94),
                    size: Dimensions.font24,
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
