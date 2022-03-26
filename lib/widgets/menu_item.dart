import 'package:flutter/material.dart';
import 'package:pielove/shared/constant.dart';

class MenuItem extends StatelessWidget {
  final String icon;
  final String name;
  final bool? isActive;

  const MenuItem({
    Key? key,
    required this.icon,
    required this.name,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/icons/$icon',
          width: 20,
          height: 18,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: medium.copyWith(
            color: isActive != null && isActive! ? orange : grey,
          ),
        )
      ],
    );
  }
}
