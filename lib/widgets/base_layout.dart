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
      backgroundColor: Color(0xFF1900FC),
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
                    onPressed: () {
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Color(0x42555151), // Background color
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        CupertinoIcons.profile_circled,
                        color: CupertinoColors.white,
                        weight: 700,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CupertinoSearchTextField(
                      decoration: BoxDecoration(
                        color: Color(0x71CACACA),
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      placeholder: 'Search...',
                      itemColor: CupertinoColors.white,
                      placeholderStyle: TextStyle(
                        color: CupertinoColors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      onChanged: (value) {
                      },
                    ),
                  ),
                  Row(
                    children: [
                      CupertinoButton(
                        padding: const EdgeInsets.all(10.0),
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0x42555151), // Background color
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            CupertinoIcons.chart_bar_alt_fill,
                            color: CupertinoColors.white,
                            weight: 700,
                          ),
                        ),
                      ),
                      CupertinoButton(
                        padding: const EdgeInsets.all(10.0),
                        onPressed: () {
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0x42555151), // Background color
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            CupertinoIcons.money_dollar,
                            color: CupertinoColors.white,
                            weight: 700,
                          ),
                        ),
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