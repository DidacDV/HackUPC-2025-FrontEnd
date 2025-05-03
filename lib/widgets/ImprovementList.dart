

import 'package:flutter/cupertino.dart';
import 'package:revolut_hackupc/main.dart';
import 'package:revolut_hackupc/widgets/CupertinoCard.dart';
import 'package:revolut_hackupc/widgets/ImprovementCard.dart';

import '../models/improvement.dart';
import '../models/improvement_categories.dart';
import '../utils/category_helper.dart';

class ImprovementList extends StatefulWidget {
  const ImprovementList({
    super.key,
    required this.category,
    required this.improvements,
    required this.onPageChanged, // Added callback for vertical page change
  });

  final ImprovementCategory category;
  final List<Improvement> improvements;
  final ValueChanged<Improvement> onPageChanged; // Callback function

  @override
  State<ImprovementList> createState() => _ImprovementListState();
}

class _ImprovementListState extends State<ImprovementList> {
  final PageController _verticalCardController = PageController();

  void onPageChangedFromInt( int index) {
    widget.onPageChanged(widget.improvements.elementAt(index));
  }

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getCategoryIcon(widget.category),
            const SizedBox(width: 10),
            Text(
              widget.category.displayName,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: getCategoryColor(widget.category),
              ),
            ),
          ],
        ),
        Expanded(
          child: PageView.builder(
              controller: _verticalCardController,
              onPageChanged: onPageChangedFromInt,
              scrollDirection: Axis.vertical,
              itemCount: widget.improvements.length,
              itemBuilder: (context, index) {
                final improvement = widget.improvements[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                      children: [
                        ImprovementCard(
                        category: improvement.category,
                        title: improvement.title,
                        description: improvement.description,
                        ),
                        CupertinoCard(
                          child: Text(
                            "Details for: ${improvement.title}", // Example text
                            style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: getCategoryColor(improvement.category),
                            ),
                          ),
                        ),
                      ],
                  )
                );
              }
          )
        )
      ]
    );

  }
}