import 'package:flutter/material.dart';

class ShowDialogScreen extends StatefulWidget {
  const ShowDialogScreen({super.key});
  static String routeName = '/show-dialog';
  static String name = 'Show Dialog';

  @override
  createState() => ShowDialogScreenState();
}

class ShowDialogScreenState extends State<ShowDialogScreen> {
  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Show Dialog'),
          centerTitle: true,
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              showThisDialog();
            },
            child: const Text('Show Dialog'),
          ),
        ));
  }

  showThisDialog() {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Scaffold(
          body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Hello')),
          ),
        );
      },
    );
  }
}
