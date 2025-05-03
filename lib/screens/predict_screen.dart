import 'package:flutter/cupertino.dart';

import '../widgets/CupertinoCard.dart';
import '../widgets/container_styled.dart';

class PredictScreen extends StatelessWidget {
  const PredictScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: const CupertinoNavigationBar(
        enableBackgroundFilterBlur: true,
      ),
      child: SafeArea(
        child: Container(
          color: CupertinoColors.black,
          child: Padding(
                padding: const EdgeInsets.all(24.0), // Adjust the padding as needed
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,  // Aligns to the left
                  children: [
                    Text(
                      "Predict",
                      style: TextStyle(
                        fontSize: 32.0,  // Adjust the font size as needed
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white,// Change the font weight to bold
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Visualize your financial future with the power of AI",
                      style: TextStyle(
                        fontSize: 16.0,  // Adjust the font size as needed
                        fontWeight: FontWeight.normal,
                        color: CupertinoColors.systemGrey,// Change the font weight to bold
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                          ],
                        )
                      ],
                    ),
                    Expanded(child: Container(

                    ))
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
