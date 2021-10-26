import 'package:covid_info/utilities/constants.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final String title;
  final int totalCount;
  final Color color;

  const Counter({
    Key? key,
    required this.title,
    required this.totalCount,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          '$totalCount',
          style: TextStyle(
            fontSize: 40,
            color: color,
          ),
        ),
        Text(
          title,
          style: kSubTextStyle,
        ),
      ],
    );
  }
}
