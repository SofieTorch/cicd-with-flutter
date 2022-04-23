library app;

import 'package:flutter/material.dart';

/// Root widget to initialize app.
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            '''
This app only checks for internet connectivity, but hey!
It implements a CI/CD workflow with GitHub Actions ;)
            ''',
          ),
        ),
      ),
    );
  }
}
