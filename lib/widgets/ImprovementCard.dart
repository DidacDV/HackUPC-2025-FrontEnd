import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revolut_hackupc/widgets/CupertinoCard.dart';

import '../models/improvement_categories.dart';
import '../utils/category_helper.dart';

class ImprovementCard extends CupertinoCard {
  final ImprovementCategory category;
  final String title;
  final String description;

  ImprovementCard({
    Key? key,
    required this.category,
    required this.title,
    required this.description,
  }) : super(
    key: key,
    child: _ImprovementCardContent(
      category: category,
      title: title,
      description: description,
    ),
  );
}

class _ImprovementCardContent extends StatelessWidget {
  final ImprovementCategory category;
  final String title;
  final String description;

  const _ImprovementCardContent({
    Key? key,
    required this.category,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryColor = getCategoryColor(category);

    return Container(
      width: double.infinity, // Make the card occupy all horizontal space
      padding: const EdgeInsets.all(16),  // Add padding inside the card
      decoration: BoxDecoration(
        color: categoryColor,
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
      );
  }
}
