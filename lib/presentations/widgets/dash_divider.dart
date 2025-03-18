import 'package:delievery_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final Color color;
  final double thickness;
  final List<double> dashPattern; // [dashLength, gapLength]

  const DashedDivider({
    super.key,
    this.color = AppColors.secondry,
    this.thickness = 1,
    this.dashPattern = const [10, 5],
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = dashPattern[0];
        final dashGap = dashPattern[1];
        final dashCount = (boxWidth / (dashWidth + dashGap)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: thickness,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}