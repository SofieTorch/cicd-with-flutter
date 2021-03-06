import 'package:cicd_with_flutter/connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Listens for changes on [ConnectivityBloc].
/// If connectivity is lost, displays a dialog informing of the situation,
/// if connectivity is retrieved after losing it, hides the dialog
/// and shows an informative snackbar.
class ConnectivityListener extends StatelessWidget {
  const ConnectivityListener({required this.child, Key? key}) : super(key: key);

  /// As this widgets only listens for changes on [ConnectivityBloc]
  /// through a [BlocListener], it needs a child widget to show.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityBloc, ConnectivityState>(
      listenWhen: (previous, current) {
        final wasLoading = previous == ConnectivityState.loading;
        final isConnected = current == ConnectivityState.connected;

        return !(wasLoading && isConnected);
      },
      listener: (context, state) {
        if (state == ConnectivityState.disconnected) {
          showDialog<void>(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return WillPopScope(
                onWillPop: () async => false,
                child: const ConnectivityLostDialog(),
              );
            },
          );
        }
        if (state == ConnectivityState.connected) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Internet connection retrieved!'),
              duration: Duration(seconds: 2),
            ),
          );
        }
      },
      child: child,
    );
  }
}
