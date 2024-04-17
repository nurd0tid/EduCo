import 'package:educo/ui/course/tab/lessons.dart';
import 'package:educo/ui/course/tab/overview.dart';
import 'package:educo/utils/dimensions.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({super.key});

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> with SingleTickerProviderStateMixin {
  late FlickManager flickManager;
  late TabController _tabController;

  // video player assets version
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset(
        'assets/video/flutter_introduce.mp4',
      ),
      autoPlay: false,
    );
    _tabController = TabController(length: 2, vsync: this);
  }

  // video player url version
  // @override
  // void initState() {
  //   super.initState();
  //   flickManager = FlickManager(
  //     videoPlayerController: VideoPlayerController.networkUrl(
  //       Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
  //     ),
  //     autoPlay: false,
  //   );
  // }

  @override
  void dispose() {
    _tabController.dispose();
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF292D32),
                      size: Dimensions.font24,
                    ),
                    Text(
                      'Details',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font16 + 2,
                        color: Color(0xFF101828),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      IconsaxOutline.archive_1,
                      color: Color(0xFF292D32),
                      size: Dimensions.font24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: FlickVideoPlayer(
                          flickManager: flickManager,
                          flickVideoWithControls: const FlickVideoWithControls(
                            controls: FlickPortraitControls(),
                          ),
                          flickVideoWithControlsFullscreen: const FlickVideoWithControls(
                            controls: FlickLandscapeControls(),
                          ),
                          preferredDeviceOrientation: const [
                            DeviceOrientation.portraitUp,
                            DeviceOrientation.portraitDown,
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: Dimensions.height20,
                          left: Dimensions.width20,
                          right: Dimensions.width20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Color(0xFFFD853A),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: Dimensions.width20,
                                  right: Dimensions.width20,
                                  top: Dimensions.height10 / 2,
                                  bottom: Dimensions.height10 / 2,
                                ),
                                child: Text(
                                  'HOT',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: GoogleFonts.getFont(
                                    'Plus Jakarta Sans',
                                    fontSize: Dimensions.font12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: Dimensions.width10 * 2,
                                  backgroundImage: const AssetImage(
                                    'assets/images/profile.png'
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.width10,
                                ),
                                Text(
                                  'Anny Morriarty',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: GoogleFonts.getFont(
                                    'Plus Jakarta Sans',
                                    fontSize: Dimensions.font16,
                                    color: Color(0xFF404653),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            Text(
                              'Comic drawing essential for everyone!',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font20 + 2,
                                color: Color(0xFF282F3E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: Dimensions.height20,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      IconsaxOutline.timer_1,
                                      size: Dimensions.font16,
                                      color: Color(0xFF888C94),
                                    ),
                                    SizedBox(
                                      width: Dimensions.width10,
                                    ),
                                    Text(
                                      '1.hour 30 min',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: GoogleFonts.getFont(
                                        'Plus Jakarta Sans',
                                        fontSize: Dimensions.font14,
                                        color: Color(0xFF888C94),
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
                                      IconsaxOutline.video,
                                      size: Dimensions.font16,
                                      color: Color(0xFF888C94),
                                    ),
                                    SizedBox(
                                      width: Dimensions.width10,
                                    ),
                                    Text(
                                      '12 Lessons',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: GoogleFonts.getFont(
                                        'Plus Jakarta Sans',
                                        fontSize: Dimensions.font14,
                                        color: Color(0xFF888C94),
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
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      IconsaxOutline.star,
                                      size: Dimensions.font16,
                                      color: Color(0xFF888C94),
                                    ),
                                    SizedBox(
                                      width: Dimensions.width10,
                                    ),
                                    Text(
                                      '4.7 (753)',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: GoogleFonts.getFont(
                                        'Plus Jakarta Sans',
                                        fontSize: Dimensions.font14,
                                        color: Color(0xFF888C94),
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
                                      IconsaxOutline.user,
                                      size: Dimensions.font16,
                                      color: Color(0xFF888C94),
                                    ),
                                    SizedBox(
                                      width: Dimensions.width10,
                                    ),
                                    Text(
                                      '2K students',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: GoogleFonts.getFont(
                                        'Plus Jakarta Sans',
                                        fontSize: Dimensions.font14,
                                        color: Color(0xFF888C94),
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
                            Text(
                              'Lectus vitae lorem luctus mostie vitae mbi curabitur magna facilisis turpis nullam nibh gfas ultricies purus molestie quis impert id agger adipiscing molestie auctor arcu ium  atd eget faucibus quis id!',
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font16,
                                color: Color(0xFF404653),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height30,
                      ),
                      TabBar(
                        controller: _tabController,
                        labelColor: Colors.white,
                        indicatorColor: Color(0xFF265AE8),
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: Dimensions.height10,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Overview',
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font20 + 2,
                                color: Color(0xFF282F3E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: Dimensions.height10,
                            ),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Lessons',
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font20 + 2,
                                color: Color(0xFF282F3E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: Dimensions.height20, 
                          left: Dimensions.width20, 
                          right: Dimensions.width20,
                        ),
                        child: AutoScaleTabBarView(
                          physics: NeverScrollableScrollPhysics(),
                          controller: _tabController,
                          children: [
                            OverviewTabPage(),
                            LesssonsTabPage(),
                          ],  
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
