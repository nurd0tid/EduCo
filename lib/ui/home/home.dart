import 'package:educo/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> categories = [
    {
      'imagePaths': 'assets/images/categories/categories.png',
      'title': 'Interior Design',
    },
    {
      'imagePaths': 'assets/images/categories/categories_1.png',
      'title': 'Traditional art',
    }
  ];

  final List<Map<String, dynamic>> mostWatching = [
    {
      'imagePaths': 'assets/images/mostwatching/mostwatching.png',
      'title': 'HTML, CSS for noob and nerds! ',
      'tags': 'Hot',
      'description': 'Samantha Rossye',
      'rating': '4.0',
      'totalRatings': '4051'
    },
    {
      'imagePaths': 'assets/images/mostwatching/mostwatching_1.png',
      'title': 'Modern interior desgn for beginner! ',
      'tags': 'New',
      'description': 'Sayef Mamud, PixelCo',
      'rating': '4.9',
      'totalRatings': '551'
    }
  ];

  final List<Map<String, dynamic>> popularTeacher = [
    {
      'imagePaths': 'assets/images/popular/teacher.png',
      'name': 'Jhon Doe',
      'job': 'Programmer',
    },
    {
      'imagePaths': 'assets/images/popular/teacher_1.png',
      'name': 'Sarrah Morry',
      'job': 'Creative artist',
    }
  ];

  final List<Map<String, dynamic>> cover = [
    {
      'imagePaths': 'assets/images/cover.png',
      'title': 'Take care your home plants!',
      'tags': 'Top',
      'description': 'Samantha Rossye',
      'rating': '4.0',
      'totalRatings': '4051'
    },
    {
      'imagePaths': 'assets/images/cover_1.png',
      'title': 'Grow your creative business with Insta!',
      'tags': 'New',
      'description': 'Sayef Mamud, PixelCo',
      'rating': '4.9',
      'totalRatings': '551'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        margin: EdgeInsets.only(
          top: Dimensions.height50,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hola, nurd0tid!',
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font26,
                        color: Color(0xFF0B121F),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'What do you wanna learn today?',
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font14,
                        color: Color(0xFF70747E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: Dimensions.width50,
                  height: Dimensions.height50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.width50),
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.height30,
            ),
            Container(
              width: Dimensions.width10 * 48,
              height: Dimensions.height30 * 2,
              child: Container(
                child: TextField(
                  maxLines: 1,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFF1F3),
                      hintText: 'Graphic Illustration',
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFFFF1F3))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: Icon(
                        EvaIcons.searchOutline,
                        size: Dimensions.font26 + 2,
                        color: Color(0xFF888C94).withOpacity(0.8),
                      )),
                  style: GoogleFonts.getFont(
                    'Plus Jakarta Sans',
                    fontSize: Dimensions.font16,
                    color: Color(0xFF888C94),
                    fontWeight: FontWeight.w400,
                  ),
                ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Popular category our  in platform',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font20 + 2,
                              color: Color(0xFF282F3E),
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.width20 * 4,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: Dimensions.height30),
                          child: Text(
                            'see more',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF70747E),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Container(
                      width: Dimensions.width10 * 48,
                      height: Dimensions.height10 * 16,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: Dimensions.width10,
                          crossAxisSpacing: Dimensions.height10,
                          childAspectRatio: 0.9,
                        ),
                        itemBuilder: (context, index) {
                          return GridTile(
                              child: Container(
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: Dimensions.height10 * 16,
                                        width: Dimensions.width10 * 48,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            image: DecorationImage(
                                                image: AssetImage(categories[index]['imagePaths']), fit: BoxFit.cover)),
                                      ),
                                      Container(
                                        height: Dimensions.height10 * 16,
                                        width: Dimensions.width10 * 48,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            gradient: LinearGradient(
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                                colors: [Colors.black.withOpacity(0.9), Colors.transparent])),
                                      ),
                                      Positioned(
                                        bottom: Dimensions.height10,
                                        left: Dimensions.width10,
                                        right: Dimensions.width10,
                                        child: Text(
                                          categories[index]['title'],
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.getFont(
                                            'Plus Jakarta Sans',
                                            fontSize: Dimensions.font16 + 2,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Most watching category in month',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font20 + 2,
                              color: Color(0xFF282F3E),
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.width20 * 4,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: Dimensions.height30),
                          child: Text(
                            'see more',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF70747E),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Container(
                      width: Dimensions.width10 * 48,
                      height: Dimensions.height10 * 24,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: mostWatching.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: Dimensions.width10,
                            crossAxisSpacing: Dimensions.height10,
                            childAspectRatio: 0.75),
                        itemBuilder: (context, index) {
                          return GridTile(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: Dimensions.width10 * 48,
                                    height: Dimensions.height10 * 12,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            image: DecorationImage(
                                              image: AssetImage(mostWatching[index]['imagePaths']),
                                              fit: BoxFit.cover,
                                            ),
                                          ), // color: Colors.redAccent,
                                        ),
                                        Positioned(
                                          child: Container(
                                            margin: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.width15),
                                            height: Dimensions.height30,
                                            width: Dimensions.width30 * 2,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFFD853A),
                                                borderRadius: BorderRadius.all(Radius.circular(4))),
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: Dimensions.width15,
                                                    right: Dimensions.width15,
                                                    top: Dimensions.width10 / 2,
                                                    bottom: Dimensions.width10 / 2),
                                                child: Text(
                                                  mostWatching[index]['tags'].toUpperCase(),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: Dimensions.font12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  Text(
                                    mostWatching[index]['title'],
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font16,
                                      color: Color(0xFF282F3E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10 / 2,
                                  ),
                                  Text(
                                    mostWatching[index]['description'],
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font14,
                                      color: Color(0xFF585D69),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10 / 2,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            mostWatching[index]['rating'],
                                            style: GoogleFonts.getFont(
                                              'Plus Jakarta Sans',
                                              fontSize: Dimensions.font12,
                                              color: Color(0xFF888C94),
                                              fontWeight: FontWeight.w400,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            width: Dimensions.width10,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          )
                                        ],
                                      ),
                                      Text(
                                        '(${mostWatching[index]['totalRatings']})',
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font12,
                                          color: Color(0xFF888C94),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Our top popular teacher this month',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font20 + 2,
                              color: Color(0xFF282F3E),
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.width20 * 4,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: Dimensions.height30),
                          child: Text(
                            'see more',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF70747E),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Container(
                      width: Dimensions.width10 * 48,
                      height: Dimensions.height10 * 28,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: popularTeacher.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: Dimensions.width10,
                          crossAxisSpacing: Dimensions.height10,
                          childAspectRatio: 0.6,
                        ),
                        itemBuilder: (context, index) {
                          return GridTile(
                            child: Container(
                              width: Dimensions.width10 * 48,
                              height: Dimensions.height10 * 30,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Stack(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: Dimensions.height50 * 2.1
                                              ),
                                              width: Dimensions.width10 * 48,
                                              height: Dimensions.height10 * 9,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  topRight: Radius.circular(8),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/popular/background.png',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 0,
                                              left: 0,
                                              right: 0,
                                              child: Container(
                                                child: ClipRRect(
                                                    child: Image.asset(
                                                      popularTeacher[index]['imagePaths'],
                                                      fit: BoxFit.contain,
                                                      height: Dimensions.height10 * 18,
                                                    ),
                                                  ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10 / 2,
                                  ),
                                  Text(
                                    popularTeacher[index]['name'],
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font16 + 2,
                                      color: Color(0xFF282F3E),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    popularTeacher[index]['job'],
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font12,
                                      color: Color(0xFF70747E),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Container(
                      width: Dimensions.width10 * 48,
                      height: Dimensions.height10 * 16.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      color: Color(0xFFFFF1F3),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(
                          top: Dimensions.height20,
                          bottom: Dimensions.height20,
                          left: Dimensions.width20,
                          right: Dimensions.width20,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Try free trial to enhance your creative journey!',
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font20 + 2,
                                color: Color(0xFF282F3E),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: Dimensions.height30,
                            ),
                            Text(
                              'Get free trial',
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font16,
                                color: Color(0xFF265AE8),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Continue to watch previous class',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font20 + 2,
                              color: Color(0xFF282F3E),
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.width20 * 4,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: Dimensions.height30),
                          child: Text(
                            'see more',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF70747E),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Container(
                      width: Dimensions.width10 * 48,
                      height: Dimensions.height10 * 24,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: cover.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: Dimensions.width10,
                            crossAxisSpacing: Dimensions.height10,
                            childAspectRatio: 0.75),
                        itemBuilder: (context, index) {
                          return GridTile(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: Dimensions.width10 * 48,
                                    height: Dimensions.height10 * 12,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            image: DecorationImage(
                                              image: AssetImage(cover[index]['imagePaths']),
                                              fit: BoxFit.cover,
                                            ),
                                          ), // color: Colors.redAccent,
                                        ),
                                        Positioned(
                                          child: Container(
                                            margin: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.width15),
                                            height: Dimensions.height30,
                                            width: Dimensions.width30 * 2,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFFD853A),
                                                borderRadius: BorderRadius.all(Radius.circular(4))),
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: Dimensions.width15,
                                                    right: Dimensions.width15,
                                                    top: Dimensions.width10 / 2,
                                                    bottom: Dimensions.width10 / 2),
                                                child: Text(
                                                  cover[index]['tags'].toUpperCase(),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: Dimensions.font12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  Text(
                                    cover[index]['title'],
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font16,
                                      color: Color(0xFF282F3E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10 / 2,
                                  ),
                                  Text(
                                    mostWatching[index]['description'],
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font14,
                                      color: Color(0xFF585D69),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10 / 2,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            cover[index]['rating'],
                                            style: GoogleFonts.getFont(
                                              'Plus Jakarta Sans',
                                              fontSize: Dimensions.font12,
                                              color: Color(0xFF888C94),
                                              fontWeight: FontWeight.w400,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            width: Dimensions.width10,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          )
                                        ],
                                      ),
                                      Text(
                                        '(${cover[index]['totalRatings']})',
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font12,
                                          color: Color(0xFF888C94),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'What others are watching in app',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font20 + 2,
                              color: Color(0xFF282F3E),
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        SizedBox(
                          width: Dimensions.width20 * 4,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: Dimensions.height30),
                          child: Text(
                            'see more',
                            style: GoogleFonts.getFont(
                              'Plus Jakarta Sans',
                              fontSize: Dimensions.font14,
                              color: Color(0xFF70747E),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Container(
                      width: Dimensions.width10 * 48,
                      height: Dimensions.height10 * 24,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: cover.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: Dimensions.width10,
                            crossAxisSpacing: Dimensions.height10,
                            childAspectRatio: 0.75),
                        itemBuilder: (context, index) {
                          return GridTile(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: Dimensions.width10 * 48,
                                    height: Dimensions.height10 * 12,
                                    child: Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            image: DecorationImage(
                                              image: AssetImage(cover[index]['imagePaths']),
                                              fit: BoxFit.cover,
                                            ),
                                          ), // color: Colors.redAccent,
                                        ),
                                        Positioned(
                                          child: Container(
                                            margin: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.width15),
                                            height: Dimensions.height30,
                                            width: Dimensions.width30 * 2,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFFD853A),
                                                borderRadius: BorderRadius.all(Radius.circular(4))),
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: Dimensions.width15,
                                                    right: Dimensions.width15,
                                                    top: Dimensions.width10 / 2,
                                                    bottom: Dimensions.width10 / 2),
                                                child: Text(
                                                  cover[index]['tags'].toUpperCase(),
                                                  style: GoogleFonts.getFont(
                                                    'Plus Jakarta Sans',
                                                    fontSize: Dimensions.font12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10,
                                  ),
                                  Text(
                                    cover[index]['title'],
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font16,
                                      color: Color(0xFF282F3E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10 / 2,
                                  ),
                                  Text(
                                    mostWatching[index]['description'],
                                    style: GoogleFonts.getFont(
                                      'Plus Jakarta Sans',
                                      fontSize: Dimensions.font14,
                                      color: Color(0xFF585D69),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: Dimensions.height10 / 2,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            cover[index]['rating'],
                                            style: GoogleFonts.getFont(
                                              'Plus Jakarta Sans',
                                              fontSize: Dimensions.font12,
                                              color: Color(0xFF888C94),
                                              fontWeight: FontWeight.w400,
                                            ),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            width: Dimensions.width10,
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          ),
                                          Icon(
                                            EvaIcons.star,
                                            size: Dimensions.font14,
                                            color: Color(0xFFFFA927),
                                          )
                                        ],
                                      ),
                                      Text(
                                        '(${cover[index]['totalRatings']})',
                                        style: GoogleFonts.getFont(
                                          'Plus Jakarta Sans',
                                          fontSize: Dimensions.font12,
                                          color: Color(0xFF888C94),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
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
          ],
        ),
      )),
    );
  }
}
