import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const AppLayoutBuilderWidget(
      {super.key, this.isColor, required this.sections, this.width = 5});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color:
                      isColor == null ? Styles.bgColor : Colors.grey.shade500,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
