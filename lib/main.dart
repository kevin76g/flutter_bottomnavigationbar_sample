import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar_sample/widget/bottom_navigation_bar.dart';
import 'package:flutter_bottomnavigationbar_sample/widget/screen_content_widget.dart';

const applicationTitle = 'BottomNavigationBar Sample';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final int index = 0;

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
