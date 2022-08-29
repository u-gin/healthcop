import 'package:flutter/material.dart';
import 'package:myhealthcop/colours.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineTemplate extends StatelessWidget {
  final bool isLast;
  final bool isFirst;
  final String tileText;
  final String tileIcon;

  const TimelineTemplate(
      {super.key,
      required this.isLast,
      required this.isFirst,
      required this.tileText,
      required this.tileIcon});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      alignment: TimelineAlign.start,
      indicatorStyle: IndicatorStyle(
        width: 50,
        height: 50,
        color: Colours.tileIndicatorColor,
        indicator: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            tileIcon,
          ),
        ),
      ),
      beforeLineStyle: LineStyle(
        color: Colours.gray,
        thickness: 2,
      ),
      afterLineStyle: LineStyle(
        color: Colours.gray,
        thickness: 2,
      ),
      endChild: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: SizedBox(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tileText,
                style: TextStyle(
                    color: Colours.tileTextColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
