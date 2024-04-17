import 'package:educo/ui/course/comment/reply.dart';
import 'package:educo/utils/dimensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class OverviewTabPage extends StatelessWidget {
  OverviewTabPage({super.key});

  final List<Map<String, dynamic>> project = [
    {
      'imagePaths': 'assets/images/project.png',
    },
    {
      'imagePaths': 'assets/images/project_1.png',
    },
    {
      'imagePaths': 'assets/images/project_2.png',
    },
    {
      'imagePaths': 'assets/images/project_3.png',
    },
  ];

  final List<Map<String, dynamic>> feedBack = [
    {
      'imagePaths': 'assets/images/teacher/teacher.png',
      'username': '@mannes_sammy',
      'time': '31 mins ago',
      'feedback': 'Sed suspendisse elit sit trist gristi queget quis tristique pulectus!'
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_1.png',
      'username': '@justin',
      'time': '01 hour ago',
      'feedback': 'Great suspendisse elit sit trist gristi'
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_2.png',
      'username': '@mouni',
      'time': '11 hour ago',
      'feedback': 'Flit sit trist gristi do musch!'
    },
  ];

  final List<Map<String, dynamic>> comment = [
    {
      'imagePaths': 'assets/images/teacher/teacher.png',
      'username': '@mouni',
      'time': '11 mins ago',
      'comment': 'Sed suspendisse elit sit triHow to get better at line? I am really stuck in this step!',
      'role': 'student',
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_1.png',
      'username': '@simon',
      'time': '31 mins ago',
      'comment': 'Can you tell me how can i upload img to cloud saas?',
      'role': 'student',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Introduction',
          textAlign: TextAlign.center,
          style: GoogleFonts.getFont(
            'Plus Jakarta Sans',
            fontSize: Dimensions.font16,
            color: Color(0xFF282F3E),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Text(
          'Ipsum quam imperdiet mollis massa bibendum odio vitae in vehicula augue ullamcorper eget a ultrices amet amet, arcu at sem et egestassaf a  facilisi a, diam integer velit, sed gravida sed eu \n\n Tllamcorper eget a ultrices amet amet, arcu at sem et egestassaf a  facilisi a, diam integer velit, sed gravida sed eu',
          style: GoogleFonts.getFont(
            'Plus Jakarta Sans',
            fontSize: Dimensions.font14,
            color: Color(0xFF585D69),
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          width: Dimensions.width10 * 48,
          height: Dimensions.height10 * 6,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xFFCFD1D4)),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: Dimensions.height15,
              bottom: Dimensions.height15,
            ),
            child: Text(
              'See more',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Plus Jakarta Sans',
                fontSize: Dimensions.font16,
                color: Color(0xFF265AE8),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height30,
        ),
        Text(
          'Feedback',
          textAlign: TextAlign.center,
          style: GoogleFonts.getFont(
            'Plus Jakarta Sans',
            fontSize: Dimensions.font16,
            color: Color(0xFF282F3E),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: Dimensions.width10 * 16.5,
              height: Dimensions.height10 * 9,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Color(0xFFFFF1F3)),
              child: Padding(
                padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFA927),
                          size: Dimensions.font16 + 2,
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Text(
                          '4.7',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font14,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Reviews',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font16,
                        color: Color(0xFF282F3E),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: Dimensions.width10 * 16.5,
              height: Dimensions.height10 * 9,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Color(0xFFFFF1F3)),
              child: Padding(
                padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          IconsaxOutline.user,
                          color: Color(0xFF404653),
                          size: Dimensions.font16 + 2,
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        Text(
                          '753',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font14,
                            color: Color(0xFF404653),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Students',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font16,
                        color: Color(0xFF282F3E),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: feedBack.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                bottom: Dimensions.height20,
              ),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: Dimensions.width30,
                          backgroundImage: AssetImage(feedBack[index]['imagePaths']),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            feedBack[index]['username'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF404653),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            feedBack[index]['time'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font12,
                              color: Color(0xFF9FA3A9),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            feedBack[index]['feedback'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF282F3E),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
        Container(
          width: Dimensions.width10 * 48,
          height: Dimensions.height10 * 6,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xFFCFD1D4)),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: Dimensions.height15,
              bottom: Dimensions.height15,
            ),
            child: Text(
              'Load more',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Plus Jakarta Sans',
                fontSize: Dimensions.font16,
                color: Color(0xFF265AE8),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Project by student',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Plus Jakarta Sans',
                fontSize: Dimensions.font16,
                color: Color(0xFF282F3E),
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Color(0xFFEDEEF0)),
              child: Padding(
                padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    bottom: Dimensions.height10,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                child: Text(
                  'Add Project',
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
        SizedBox(
          height: Dimensions.height30,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: project.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: Dimensions.width10,
            crossAxisSpacing: Dimensions.height10,
          ),
          itemBuilder: (context, index) {
            return GridTile(
              child: Container(
                height: Dimensions.height10 * 21.6,
                width: Dimensions.width10 * 16.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  project[index]['imagePaths'],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: Dimensions.height30,
        ),
        Container(
          width: Dimensions.width10 * 48,
          height: Dimensions.height10 * 6,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xFFCFD1D4)),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: Dimensions.height15,
              bottom: Dimensions.height15,
            ),
            child: Text(
              'Load more',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Plus Jakarta Sans',
                fontSize: Dimensions.font16,
                color: Color(0xFF265AE8),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '5 Comments',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Plus Jakarta Sans',
                fontSize: Dimensions.font16,
                color: Color(0xFF282F3E),
                fontWeight: FontWeight.w700,
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Color(0xFFEDEEF0)),
              child: Padding(
                padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    bottom: Dimensions.height10,
                    left: Dimensions.width20,
                    right: Dimensions.width20),
                child: Text(
                  'Add comment',
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
        SizedBox(
          height: Dimensions.height20,
        ),
        ListView.builder(
          itemCount: comment.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: Dimensions.height20),
              child:  IntrinsicHeight(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: Dimensions.width30,
                          backgroundImage: AssetImage(
                            comment[index]['imagePaths']
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: Dimensions.width10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            comment[index]['username'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF404653),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height10 / 2,
                          ),
                          Row(
                            children: [
                              Text(
                                comment[index]['time'],
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
                                comment[index]['role'],
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
                          SizedBox(
                            height: Dimensions.height10 / 2,
                          ),
                          Text(
                            comment[index]['comment'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF282F3E),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Liked',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font14,
                                      color: Color(0xFF265AE8),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => ReplyCommentPage()),
                                      );
                                    },
                                    child: Text(
                                      'Reply',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.getFont(
                                        'Plus Jakarta Sans',
                                        fontSize: Dimensions.font14,
                                        color: Color(0xFF585D69),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    IconsaxOutline.like_1,
                                    size: Dimensions.font16,
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
                            ],
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ReplyCommentPage()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                left: Dimensions.width10,
                              ),
                              child: Text(
                                'view 1 replies',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  'Plus Jakarta Sans',
                                  fontSize: Dimensions.font14,
                                  color: Color(0xFF265AE8),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            );
          },
        ),
        Container(
          width: Dimensions.width10 * 48,
          height: Dimensions.height10 * 6,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xFFCFD1D4)),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: Dimensions.height15,
              bottom: Dimensions.height15,
            ),
            child: Text(
              'Load more',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Plus Jakarta Sans',
                fontSize: Dimensions.font16,
                color: Color(0xFF265AE8),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}