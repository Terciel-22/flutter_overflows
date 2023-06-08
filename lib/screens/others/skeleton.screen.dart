import 'package:flutter/material.dart';

class SkeletonScreen extends StatefulWidget {
  static String routeName = '/skeleton';
  static String name = 'Scrollable TextButtons';
  const SkeletonScreen({super.key});

  @override
  State<SkeletonScreen> createState() => _SkeletonScreenState();
}

class _SkeletonScreenState extends State<SkeletonScreen> {
  final List<String> buttonTexts = [
    'Button 1',
    'Button 2',
    'Button 3',
    'Button 4',
    'Button 5',
    'Button 6',
    'Button 7',
    'Button 8',
    'Button 9',
    'Button 10',
    'Button 11',
    'Button 12',
  ];

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable TextButtons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scrollable TextButtons'),
        ),
        body: SizedBox(
          height: kToolbarHeight,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            itemCount: buttonTexts.length,
            itemExtent: 120.0, // Adjust as needed
            itemBuilder: (context, index) {
              final text = buttonTexts[index];
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    // Button press logic
                    print('Pressed $text');
                    scrollToCenter(index);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void scrollToCenter(int index) {
    final double itemWidth = 120.0; // Adjust to match the itemExtent
    final double screenWidth = MediaQuery.of(context).size.width;
    final double scrollOffset =
        (itemWidth * index) - (screenWidth / 2) + (itemWidth / 2);
    _scrollController.animateTo(
      scrollOffset,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }
}
