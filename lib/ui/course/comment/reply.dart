import 'package:educo/utils/dimensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ReplyCommentPage extends StatefulWidget {
  ReplyCommentPage({super.key});

  @override
  State<ReplyCommentPage> createState() => _ReplyCommentPageState();
}

class _ReplyCommentPageState extends State<ReplyCommentPage> {
  TextEditingController _replyController = TextEditingController();

  final List<Map<String, dynamic>> replyComment = [
    {
      'imagePaths': 'assets/images/teacher/teacher.png',
      'username': '@mouni',
      'role': 'student',
      'time': '11 mins ago',
      'comment': 'How to get better at line? I am really stuck in this step!',
    },
    {
      'imagePaths': 'assets/images/teacher/teacher_6.png',
      'username': '@anymor',
      'role': 'teacher',
      'time': '20 mins ago',
      'comment':
          'The step is really easy, just keep practicing line drawing with right posture and correct pencil holding as showen in the video! Good luck ❤',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
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
                Container(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF292D32),
                    size: Dimensions.font24,
                  ),
                ),
                SizedBox(
                  height: Dimensions.height30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2 Replies',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font16,
                        color: Color(0xFF282F3E),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return Container(
                              // color: Colors.redAccent,
                              padding: EdgeInsets.only(
                                bottom: MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: TextField(
                                controller: _replyController,
                                decoration: InputDecoration(
                                  hintText: 'Add your reply',
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      topRight: Radius.circular(6),
                                    ),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.width20,
                                    vertical: Dimensions.height20 + 5,
                                  ),
                                  suffixIcon: Icon(
                                    IconsaxBold.send_1,
                                    size: Dimensions.font26,
                                    color: Color(0xFF265AE8),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Color(0xFFEDEEF0)),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: Dimensions.height10,
                              bottom: Dimensions.height10,
                              left: Dimensions.width20,
                              right: Dimensions.width20),
                          child: Text(
                            'Add reply',
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
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: replyComment.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: Dimensions.height20),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: Dimensions.width30,
                                    backgroundImage: AssetImage(replyComment[index]['imagePaths']),
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
                                    Row(
                                      children: [
                                        Text(
                                          replyComment[index]['username'],
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Plus Jakarta Sans',
                                            fontSize: Dimensions.font14,
                                            color: Color(0xFF404653),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          width: Dimensions.width30,
                                        ),
                                        replyComment[index]['role'] == 'teacher'
                                            ? Container(
                                                width: Dimensions.width10 * 6,
                                                height: Dimensions.height10 * 2,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(3),
                                                  color: Color(0xFFF97066),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 1,
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    replyComment[index]['role'],
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.getFont(
                                                      'Plus Jakarta Sans',
                                                      fontSize: Dimensions.font12,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : SizedBox()
                                      ],
                                    ),
                                    SizedBox(
                                      height: Dimensions.height10 / 2,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          replyComment[index]['time'],
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
                                        replyComment[index]['role'] == 'student'
                                            ? Text(
                                                replyComment[index]['role'],
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.getFont(
                                                  'Plus Jakarta Sans',
                                                  fontSize: Dimensions.font12,
                                                  color: Color(0xFF9FA3A9),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            : SizedBox()
                                      ],
                                    ),
                                    SizedBox(
                                      height: Dimensions.height10 / 2,
                                    ),
                                    Text(
                                      replyComment[index]['comment'],
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
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
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
