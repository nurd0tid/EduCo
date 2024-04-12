import 'package:educo/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopTeacherPage extends StatelessWidget {
  TopTeacherPage({super.key});

  final List<Map<String, dynamic>> teacher = [
    {
      'imagePaths': 'assets/images/teacher/teacher.png',
      'name': 'Sammuel Jonass',
      'username': '@jdoe',
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_1.png',
      'name': 'Mohammad Salah',
      'username': '@sidx',
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_2.png',
      'name': 'Arafat Jamil',
      'username': '@arafjt',
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_3.png',
      'name': 'Sammuel Suyer',
      'username': '@sammj',
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_4.png',
      'name': 'Irene Joe',
      'username': '@irenee',
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_5.png',
      'name': 'Natalle Gromi',
      'username': '@ngromi',
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_6.png',
      'name': 'Michel Pheleps',
      'username': '@pheleps',
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_7.png',
      'name': 'Samur Jrodan',
      'username': '@jdoe',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SingleChildScrollView(
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
                  Container(
                    child: Text(
                      'Top teacher this month',
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
                    height: Dimensions.height30,
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: teacher.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            bottom: Dimensions.height20
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: Dimensions.width10 * 4.4,
                                    height: Dimensions.height10 * 4.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(Dimensions.width50),
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      teacher[index]['imagePaths'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        teacher[index]['name'],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font16 + 2,
                                          color: Color(0xFF282F3E),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        teacher[index]['username'],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font12,
                                          color: Color(0xFF888C94),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: Dimensions.width10 * 7.7,
                                height: Dimensions.height10 * 4,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEDEEF0),
                                  borderRadius: BorderRadius.circular(4)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text(
                                    'Follow',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
