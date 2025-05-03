import 'package:flutter/cupertino.dart';

class FloatingActionMenu extends StatelessWidget {
  final List<FloatingActionItem> items;

  const FloatingActionMenu({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: items
              .map((item) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: item.onPressed,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60, // Reduced height to fit the icon only
                    decoration: BoxDecoration(
                      color: Color(0x99000000),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: CupertinoColors.systemGrey.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(
                      item.icon,
                      color: CupertinoColors.white,
                      size: 30, // Adjust size if needed
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.label,
                    style: const TextStyle(
                      fontSize: 10,
                      color: CupertinoColors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ))
              .toList(),
        ),
      ),
    );
  }
}

class FloatingActionItem {
  final IconData icon;
  final VoidCallback onPressed;
  final String label;

  FloatingActionItem({
    required this.icon,
    required this.onPressed,
    required this.label,
  });
}
