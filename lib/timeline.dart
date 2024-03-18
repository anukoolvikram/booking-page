import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeline extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;

  const MyTimeline({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.eventCard,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TimelineTile(
          isFirst: isFirst,
          isLast: isLast,
          beforeLineStyle: LineStyle(
              color: isPast ? Color(0xFF25A19D) : Colors.green.shade100),
          indicatorStyle: IndicatorStyle(
              color: isPast ? Color(0xFF25A19D) : Colors.green.shade100,
              width: 25,
              iconStyle: IconStyle(
                  iconData: Icons.done,
                  color: isPast ? Colors.white : Colors.green.shade100)),
          endChild: Container(child: eventCard)),
    );
  }
}
