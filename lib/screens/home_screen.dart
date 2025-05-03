import 'package:flutter/cupertino.dart';
import 'package:revolut_hackupc/widgets/base_layout.dart';
import '../widgets/container_styled.dart';
import '../widgets/CupertinoCard.dart';
import '../widgets/FloatingActionMenu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      title: 'Home',
      child: GradientBackground(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          CupertinoCard(
            onTap: () {
              print("Card tapped!");
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Your balance · EUR",
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "192.62€",
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 350),
                FloatingActionMenu(
                items: [
                  FloatingActionItem(icon: CupertinoIcons.graph_circle, onPressed: () {
                    Navigator.of(context, rootNavigator: true).pushNamed("/predict");
                  }, label: "Predict"),
                  FloatingActionItem(icon: CupertinoIcons.gauge, onPressed: () {
                    Navigator.of(context, rootNavigator: true).pushNamed("/improve");
                  }, label: "Improve"),
                  FloatingActionItem(icon: CupertinoIcons.calendar_today, onPressed: () {}, label: "AI Calendar"),
                  FloatingActionItem(icon: CupertinoIcons.circle_grid_3x3, onPressed: () {}, label: "NFC Bizum"),
                ],
              )
              ]
              ,)



        ],
      ))

    );
  }
}
