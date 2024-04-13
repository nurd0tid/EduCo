import 'package:educo/ui/profile/setting/settings.dart';
import 'package:educo/ui/profile/tab/courses.dart';
import 'package:educo/ui/profile/tab/following.dart';
import 'package:educo/ui/profile/tab/project.dart';
import 'package:educo/utils/dimensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFB32318),
        child: Stack(
          children: [
            Positioned(
              top: Dimensions.height10 * 18,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.white,
              ),
            ),
            Positioned(
              top: Dimensions.height10 * 12,
              right: Dimensions.width20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
                child: Icon(
                  IconsaxOutline.setting_2,
                  color: Colors.white,
                  size: Dimensions.font24,
                ),
              ),
            ),
            Positioned(
                top: Dimensions.height10 * 12,
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: Dimensions.width10 * 12,
                    height: Dimensions.height10 * 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.width10 * 6),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'assets/images/profile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Text(
                    '@nurd0tid',
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font26,
                      color: Color(0xFF282F3E),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: Dimensions.width30 * 2,
                      right: Dimensions.width30 * 2,
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Just a simple guy who loves do something new and fun! 😜',
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font14,
                        color: Color(0xFF70747E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: Dimensions.font24,
                        height: Dimensions.font24,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/ig.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      Container(
                        width: Dimensions.font24,
                        height: Dimensions.font24,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/fb.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: Dimensions.width20,
                      ),
                      Container(
                        width: Dimensions.font24,
                        height: Dimensions.font24,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/images/twitter.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: Dimensions.width20 * 2,
                      right: Dimensions.width20 * 2
                    ),
                    child: PreferredSize(
                      preferredSize: Size.fromHeight(Dimensions.height10 * 5),
                      child: Stack(
                        fit: StackFit.passthrough,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xFFE9EFFD),
                                  width: 3.0
                                ),
                              ),
                            ),
                          ),
                          TabBar(
                            controller: _tabController,
                            labelColor: Colors.white,
                            indicatorColor: Color(0xFF265AE8),
                            indicatorSize: TabBarIndicatorSize.tab,
                            tabs: [
                              Container(
                                height: Dimensions.height10 * 5,
                                child: Tab(
                                  child: Column(
                                    children: [
                                      Text(
                                        textAlign: TextAlign.center,
                                        '03',
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font14,
                                          color: Color(0xFF404653),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        'Projects',
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font16,
                                          color: Color(0xFF282F3E),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: Dimensions.height10 * 5,
                                child: Tab(
                                  child: Column(
                                    children: [
                                      Text(
                                        textAlign: TextAlign.center,
                                        '04',
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font14,
                                          color: Color(0xFF404653),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        'Courses',
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font16,
                                          color: Color(0xFF282F3E),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: Dimensions.height10 * 5,
                                child: Tab(
                                  child: Column(
                                    children: [
                                      Text(
                                        textAlign: TextAlign.center,
                                        '08',
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font14,
                                          color: Color(0xFF404653),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        'Following',
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font16,
                                          color: Color(0xFF282F3E),
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: Dimensions.height20,
                        left: Dimensions.width16,
                        right: Dimensions.width16
                      ),
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _tabController,
                        children: [
                          ProjectTabPage(),
                          CoursesTabPage(),
                          FollowingTabPage(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
