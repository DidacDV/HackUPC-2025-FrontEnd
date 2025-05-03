import 'package:flutter/cupertino.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1900FC),
            Color(0xFF1A3F5C),
            Color(0xFF000000),
          ],
          stops: [
            0.0,
            0.57,
            1,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )
      ),
      child: child,
    );
  }
}
