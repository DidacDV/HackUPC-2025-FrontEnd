import 'package:flutter/cupertino.dart';

class BaseLayout extends StatelessWidget {
  final String title;
  final Widget child;

  const BaseLayout({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color(0xFF1900FC),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CupertinoButton(
                    padding: const EdgeInsets.all(10.0),
                    child: const Icon(CupertinoIcons.profile_circled),
                    onPressed: () {
                    },
                  ),
                  Expanded(
                    child: CupertinoSearchTextField(
                      placeholder: 'Search...',
                      onChanged: (value) {
                      },
                    ),
                  ),
                  Row(
                    children: [
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: CupertinoColors.white, // Background color
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            CupertinoIcons.chart_bar,
                            color: CupertinoColors.destructiveRed,
                          ),
                        ),
                      ),
                      CupertinoButton(
                        padding: const EdgeInsets.all(10.0),
                        child: const Icon(CupertinoIcons.money_dollar),
                        onPressed: () {
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}