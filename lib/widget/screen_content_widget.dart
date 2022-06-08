import 'package:flutter/material.dart';

class ScreenContentWidget extends StatelessWidget {
  final int index;

  const ScreenContentWidget({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> screenTitles = ['Home', 'Business', 'School'];
    List<String> imagePaths = [
      'assets/images/home.jpg',
      'assets/images/business.jpg',
      'assets/images/school.jpg'
    ];
    List<String> imageAuthors = [
      'Photo by Minh Pham on Unsplash',
      'Photo by Charles Forerunner on Unsplash',
      'Photo by CDC on Unsplash'
    ];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            screenTitles[index],
            style: const TextStyle(fontSize: 30.0),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Flexible(
            child: Image.asset(
              imagePaths[index],
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            imageAuthors[index],
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(
            height: 30.0,
          )
        ],
      ),
    );
  }
}
