import 'package:educo/ui/bookmark/bookmark.dart';
import 'package:educo/ui/home/home.dart';
import 'package:educo/ui/profile/profile.dart';
import 'package:educo/ui/search/search.dart';
import 'package:educo/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  List screen = [
    HomePage(),
    SearchPage(),
    BookmarkPage(),
    ProfilePage(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[_selectedIndex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.transparent,
          ), 
          child: Container(
            height: Dimensions.height10 * 8.5,
            child: Container(
              margin: EdgeInsets.only(
                left: Dimensions.width10 * 2,
                right: Dimensions.width10 * 2,
              ),
              child: BottomNavigationBar(
                elevation: 0,
                iconSize: Dimensions.font24,
                mouseCursor: SystemMouseCursors.grab,
                selectedIconTheme: IconThemeData(
                  size: Dimensions.font24,
                ),
                currentIndex: _selectedIndex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    icon: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimensions.width20 * 2,
                            height: Dimensions.height20 * 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.width20),
                              color: _selectedIndex == 0 ? Color(0xFF265AE8) : Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  IconsaxOutline.home,
                                  color: _selectedIndex == 0 ? Colors.white : Color(0xFF70747E),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          if (_selectedIndex == 0)
                            Text(
                              'Home',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font16,
                                color: Color(0xFF404653),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimensions.width20 * 2,
                            height: Dimensions.height20 * 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.width20),
                              color: _selectedIndex == 1 ? Color(0xFF265AE8) : Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  IconsaxOutline.search_normal_1,
                                  color: _selectedIndex == 1 ? Colors.white : Color(0xFF70747E),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          if (_selectedIndex == 1)
                            Text(
                              'Search',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font16,
                                color: Color(0xFF404653),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimensions.width20 * 2,
                            height: Dimensions.height20 * 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.width20),
                              color: _selectedIndex == 2 ? Color(0xFF265AE8) : Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  IconsaxOutline.archive_1,
                                  color: _selectedIndex == 2 ? Colors.white : Color(0xFF70747E),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          if (_selectedIndex == 2)
                            Text(
                              'Saved',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font16,
                                color: Color(0xFF404653),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: Dimensions.width20 * 2,
                            height: Dimensions.height20 * 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.width20),
                              color: _selectedIndex == 3 ? Color(0xFF265AE8) : Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  IconsaxOutline.user,
                                  color: _selectedIndex == 3 ? Colors.white : Color(0xFF70747E),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Dimensions.width10,
                          ),
                          if (_selectedIndex == 3)
                            Text(
                              'Profile',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Plus Jakarta Sans',
                                fontSize: Dimensions.font16,
                                color: Color(0xFF404653),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        ],
                      ),
                    ),
                    label: '',
                  ),
                ],
              ),
            )
          )
        )
    );
  }
}
