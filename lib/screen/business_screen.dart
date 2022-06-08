import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar_sample/widget/bottom_navigation_bar.dart';
import '../main.dart';
import '../widget/screen_content_widget.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  final int index = 1;

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
