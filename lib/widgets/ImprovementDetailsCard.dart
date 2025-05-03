import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revolut_hackupc/app_colors.dart';
import 'package:revolut_hackupc/widgets/CupertinoCard.dart';

import '../models/improvement_categories.dart';
import '../utils/category_helper.dart';

class ImprovementDetailsCard extends CupertinoCard {
  final String placeholder1;
  final String placeholder2;

  ImprovementDetailsCard({
    super.key,
    required this.placeholder1,
    required this.placeholder2
  }) : super(
    child: _ImprovementDetailsCardContent(
      placeholder1: placeholder1,
      placeholder2: placeholder2
    ),
  );
}

class _ImprovementDetailsCardContent extends StatelessWidget {
  final String placeholder1;
  final String placeholder2;

  const _ImprovementDetailsCardContent({
    Key? key,
    required this.placeholder1,
    required this.placeholder2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity, // Make the card occupy all horizontal space
      padding: const EdgeInsets.all(16),  // Add padding inside the card
      decoration: BoxDecoration(
        color: AppColors.lightPurple,
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            placeholder1,
            style: TextStyle(
              color: CupertinoColors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            placeholder1,
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
