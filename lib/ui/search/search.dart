import 'package:educo/ui/search/search_result.dart';
import 'package:educo/utils/dimensions.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Map<String, dynamic>> topSearch = [
    {
      'title': 'photoraphy',
    },
    {
      'title': 'craft',
    },
    {
      'title': 'art',
    },
    {
      'title': 'procreate',
    },
    {
      'title': 'marketing',
    },
    {
      'title': 'UX Design',
    }
  ];

  final List<Map<String, dynamic>> categories = [
    {
      'imagePaths': 'assets/images/categories/categories.png',
      'title': 'Interior Design',
    },
    {
      'imagePaths': 'assets/images/categories/categories_1.png',
      'title': 'Traditional art',
    },
    {
      'imagePaths': 'assets/images/categories/categories_2.png',
      'title': '3D Animation',
    },
    {
      'imagePaths': 'assets/images/categories/categories_3.png',
      'title': 'Marketing',
    },
    {
      'imagePaths': 'assets/images/categories/categories_4.png',
      'title': 'Photography',
    },
    {
      'imagePaths': 'assets/images/categories/categories_5.png',
      'title': 'Calligraphy & lattering',
    },
    {
      'imagePaths': 'assets/images/categories/categories_6.png',
      'title': 'UX Design',
    },
    {
      'imagePaths': 'assets/images/categories/categories_7.png',
      'title': 'Web Developer',
    }
  ];

  TextEditingController _controller = TextEditingController();

  void _search() {
    String query = _controller.text.trim();
    if (query.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SearchResultPage(query: query),
        ),
      );
    }
  }
  
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
              Container(
                width: Dimensions.width10 * 48,
                height: Dimensions.height30 * 2,
                child: Container(
                  child: TextField(
                    controller: _controller,
                    maxLines: 1,
                    onSubmitted: (_) => _search,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFFFF1F3),
                        hintText: 'Type something...',
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFFFF1F3))),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            EvaIcons.searchOutline,
                            size: Dimensions.font26 + 2,
                            color: Color(0xFF888C94).withOpacity(0.8),
                          ),
                          onPressed: _search,
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
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Top searches',
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font14,
                            color: Color(0xFF585D69),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        Wrap(
                          spacing: Dimensions.width10,
                          runSpacing: Dimensions.height10,
                          children: List.generate(
                            topSearch.length,
                            (index) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xFFEDEEF0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: Dimensions.width20,
                                  right: Dimensions.width20,
                                  top: Dimensions.height10,
                                  bottom: Dimensions.height10,
                                ),
                                child: Text(
                                  topSearch[index]['title'],
                                  style: GoogleFonts.getFont(
                                    'Plus Jakarta Sans',
                                    fontSize: Dimensions.font16,
                                    color: Color(0xFF282F3E),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height20,
                        ),
                        Text(
                          'Categories',
                          style: GoogleFonts.getFont(
                            'Plus Jakarta Sans',
                            fontSize: Dimensions.font14,
                            color: Color(0xFF585D69),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: Dimensions.height20,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: categories.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: Dimensions.width10,
                            crossAxisSpacing: Dimensions.height10,
                            childAspectRatio: 1.7,
                          ),
                          itemBuilder: (context, index) {
                            return GridTile(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: Dimensions.height10 * 12,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            image: DecorationImage(
                                              image: AssetImage(categories[index]['imagePaths']),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: Dimensions.height10 * 12,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(12),
                                            gradient: LinearGradient(
                                              begin: Alignment.bottomCenter,
                                              end: Alignment.topCenter,
                                              colors: [
                                                Colors.black.withOpacity(0.8),
                                                Colors.transparent,
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: Dimensions.height20,
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
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
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
}
