import 'package:educo/ui/search/search_result_empty.dart';
import 'package:educo/ui/search/search_result_filter.dart';
import 'package:educo/utils/dimensions.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResultPage extends StatefulWidget {
  final String query;

  SearchResultPage({required this.query});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> _dataSearch = [
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

  bool isSearchFilter = false;

  @override
  Widget build(BuildContext context) {
    _searchController.text = widget.query;
    final List<Map<String, dynamic>> searchResult = _dataSearch
        .where((data) => data['title'].toString().toLowerCase().contains(widget.query.toLowerCase()))
        .toList();

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          child: Column(
            children: [
              Container(
                width: Dimensions.width10 * 48,
                height: Dimensions.height30 * 2,
                child: Container(
                  child: TextField(
                    controller: _searchController,
                    maxLines: 1,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFF1F3),
                        hintText: 'Type something...',
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
                height: Dimensions.height20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your search result',
                    style: GoogleFonts.getFont(
                      'Plus Jakarta Sans',
                      fontSize: Dimensions.font14,
                      color: Color(0xFF585D69),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSearchFilter = !isSearchFilter;
                      });
                      if (isSearchFilter) {
                        Navigator.of(context).push(_newRoute());
                      }
                    },
                    child: Icon(
                      IconsaxOutline.setting_4,
                      color: Color(0xFF585D69),
                      size: Dimensions.font24,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    child: Column(
                      children: [
                        searchResult.isNotEmpty
                            ? ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: searchResult.length,
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
                                            searchResult[index]['imagePaths'],
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
                                                searchResult[index]['title'],
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
                                                searchResult[index]['author'],
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
                                                        '${searchResult[index]['totalStudent']} student',
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
                                                        searchResult[index]['rating'],
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
                              )
                            : SearchResultEmptyPage()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Route _newRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return SearchFilterPage();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.easeOutCubic;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
