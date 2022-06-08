import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar_sample/widget/bottom_navigation_bar.dart';
import 'package:flutter_bottomnavigationbar_sample/widget/screen_content_widget.dart';

import '../main.dart';

class SchoolScreen extends StatefulWidget {
  const SchoolScreen({Key? key}) : super(key: key);

  @override
  State<SchoolScreen> createState() => _SchoolScreenState();
}

class _SchoolScreenState extends State<SchoolScreen> {
  final int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(applicationTitle),
      ),
      body: ScreenContentWidget(
        index: index,
      ),
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: index,
      ),
    );
  }
}
