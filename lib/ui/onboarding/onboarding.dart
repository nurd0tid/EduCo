import 'package:educo/ui/authentication/login.dart';
import 'package:educo/ui/authentication/register.dart';
import 'package:educo/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      imagePath: 'assets/images/onboarding.png',
      title: 'Better way to learning is calling you!',
      description: 'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue ',
    ),
    OnboardingItem(
      imagePath: 'assets/images/onboarding_2.png',
      title: 'Find yourself  by doing whatever you do !',
      description: 'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue ',
    ),
    OnboardingItem(
      imagePath: 'assets/images/onboarding_3.png',
      title: 'It’s not just learning, It’s a promise!',
      description: 'Impeet viverra vivamus porttior ules ac vulte lectus velit sen lectus ue ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: Dimensions.height20 * 2, 
            bottom: Dimensions.height30 * 2,
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Align Column children at the center
            children: [
              Expanded(
                // Ensure PageView takes remaining space
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemCount: onboardingItems.length,
                  itemBuilder: (context, index) {
                    return _buildOnboardingStep(
                      imagePath: onboardingItems[index].imagePath,
                      title: onboardingItems[index].title,
                      description: onboardingItems[index].description,
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Align indicators at the center horizontally
                children: List.generate(
                  onboardingItems.length,
                  (index) => _buildIndicator(index),
                ),
              ),
              SizedBox(height: Dimensions.height30),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Container(
                  width: Dimensions.width35 * 10,
                  height: Dimensions.height30 * 2,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    color: Color(0xFF265AE8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(Dimensions.width16),
                    child: Text(
                      'Register',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  width: Dimensions.width35 * 10,
                  height: Dimensions.height30 * 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    border: Border.all(
                      color: Color(0xFFCFD1D4),
                      width: 1,
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(Dimensions.width16),
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Plus Jakarta Sans',
                        fontSize: Dimensions.font16,
                        color: Color(0xFF265AE8),
                        fontWeight: FontWeight.w700,
                      ),
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

  Widget _buildOnboardingStep({
    required String imagePath,
    required String title,
    required String description,
  }) {
    return Column(
      children: [
        // Skip Button
        Container(
          margin: EdgeInsets.only(
            right: Dimensions.width16,
            left: Dimensions.width16,
          ),
          alignment: Alignment.topRight,
          child: Text(
            'Skip',
            style: GoogleFonts.getFont(
              'Plus Jakarta Sans',
              fontSize: Dimensions.font16,
              color: Color(0xFF265AE8),
              fontWeight: FontWeight.w700,
            ),
            maxLines: 1,
          ),
        ),
        SizedBox(
          height: Dimensions.height30 * 2,
        ),
        // Asset Images
        Container(
          width: Dimensions.width10 * 21,
          height: Dimensions.height10 * 19.6,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height30 * 2,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width16, right: Dimensions.width16),
          child: Column(
            children: [
              Text(
                (title),
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Plus Jakarta Sans',
                  fontSize: Dimensions.font26,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Text(
                (description),
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Plus Jakarta Sans',
                  fontSize: Dimensions.font14,
                  color: const Color(0xFF9FA3A9),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIndicator(int index) {
    return Container(
      width: Dimensions.width10 - 2,
      height: Dimensions.width10 - 2,
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: _currentPage == index ? Color(0xFF265AE8) : Colors.transparent, // Atur warna border
          width: 2.0, // Atur lebar border
        ),
        color: _currentPage == index ? Colors.transparent : const Color(0xFF9FA3A9), // Atur warna fill
      ),
    );
  }
}

class OnboardingItem {
  final String imagePath;
  final String title;
  final String description;

  OnboardingItem({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}
