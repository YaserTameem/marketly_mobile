import 'package:flutter/material.dart';
import 'package:marketly_mobile/core/widgets/home_section.dart';

class HomeScreen extends StatefulWidget {
  static const String screenRoute = '/home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
        child: Column(
          children: [
            HomeSection(title: 'Categories',)
          ],
        ),
      ),
    );
  }
}

