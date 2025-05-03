import 'package:flutter/cupertino.dart';
import 'package:revolut_hackupc/app_colors.dart';
import '../models/improvement_categories.dart';
import 'package:flutter/material.dart';

Color getCategoryColor(ImprovementCategory category) {
  switch (category) {
    case ImprovementCategory.compras:
      return AppColors.deepBlue;
    case ImprovementCategory.salud:
      return AppColors.midBlue;
    case ImprovementCategory.entretenimiento:
      return AppColors.lightPurple;
    case ImprovementCategory.alimentacion:
      return CupertinoColors.activeGreen;
    case ImprovementCategory.transporte:
      return AppColors.purple;
    }
}

Icon getCategoryIcon(ImprovementCategory category) {
  switch (category) {
    case ImprovementCategory.compras:
      return const Icon(CupertinoIcons.shopping_cart, color: CupertinoColors.white);
    case ImprovementCategory.salud:
      return const Icon(CupertinoIcons.heart_fill, color: CupertinoColors.white);
    case ImprovementCategory.entretenimiento:
      return const Icon(CupertinoIcons.sportscourt, color: CupertinoColors.white);
    case ImprovementCategory.alimentacion:
      return const Icon(Icons.dinner_dining, color: CupertinoColors.white);
    case ImprovementCategory.transporte:
      return const Icon(CupertinoIcons.train_style_one, color: CupertinoColors.white);
    }
}
