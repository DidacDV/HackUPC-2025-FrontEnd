import 'package:flutter/cupertino.dart';

class PredictScreen extends StatelessWidget {
  const PredictScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Predict'),
      ),
      child: SafeArea(
        child: Center(
          child: Text('Predict Screen Content'),
        ),
      ),
    );
  }
}
