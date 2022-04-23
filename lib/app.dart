library app;

import 'package:cicd_with_flutter/connectivity/connectivity.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Root widget to initialize app.
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ConnectivityBloc>(
      create: (_) => ConnectivityBloc(Connectivity())
        ..add(
          const ConnectivityRequested(),
        ),
      child: const _AppView(),
    );
  }
}

class _AppView extends StatelessWidget {
  const _AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ConnectivityListener(
        child: Scaffold(
          body: Center(
            child: Text(
              '''
This app only checks for internet connectivity, but hey!
It implements a CI/CD workflow with GitHub Actions ;)
            ''',
            ),
          ),
        ),
      ),
    );
  }
}
