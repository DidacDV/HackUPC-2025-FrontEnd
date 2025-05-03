import 'package:flutter/cupertino.dart';
import 'package:revolut_hackupc/widgets/base_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
        title: 'Profile',
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("this is profile"),
            CupertinoButton(onPressed: () {
              Navigator.pushNamed(context, '/');
            }, child: const Text("to Home"))
          ],
        )
    );
  }
}
