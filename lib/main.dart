import 'package:educo/ui/authentication/reset_password.dart';
import 'package:educo/ui/course/detail.dart';
import 'package:educo/ui/course/project/add.dart';
import 'package:educo/ui/course/project/project.dart';
import 'package:educo/ui/main_screen.dart';
import 'package:educo/ui/onboarding/onboarding.dart';
import 'package:educo/ui/profile/profile.dart';
import 'package:educo/ui/search/search.dart';
import 'package:educo/ui/search/search_result.dart';
import 'package:educo/ui/search/search_result_filter.dart';
import 'package:educo/ui/teacher/top_teacher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduCo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardingPage(),
    );
  }
}