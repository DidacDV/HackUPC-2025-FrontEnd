import 'improvement_categories.dart';

class Improvement {
  const Improvement({
    required this.category,
    required this.title,
    required this.description,
  });

  final ImprovementCategory category;
  final String title;
  final String description;
}