import 'package:flutter/material.dart';
import 'package:tdesign_flutter/src/components/steps/td_steps_vertical_item.dart';
import '../../../tdesign_flutter.dart';

/// Steps步骤条，垂直步骤
class TDStepsVertical extends StatelessWidget {
  final List<StepsItemData> steps;
  final int activeIndex;
  final StepsStatus status;
  final bool simple;
  const TDStepsVertical({
    super.key,
    required this.steps,
    required this.activeIndex,
    required this.status,
    required this.simple,
  });

  @override
  Widget build(BuildContext context) {
    final stepsCount = steps.length;
    List<Widget> stepsVerticalItem = steps.asMap().entries.map((item){
      return TDStepsVerticalItem(
        index: item.key,
        data: item.value,
        stepsCount: stepsCount,
        activeIndex: activeIndex,
        status: status,
        simple: simple,
      );
    }).toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: stepsVerticalItem,
    );
  }

}

