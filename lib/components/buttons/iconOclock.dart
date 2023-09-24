import 'package:flutter/material.dart';

import '../../constants/color.dart';

class IconOclock extends StatelessWidget {
  const IconOclock({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.lazyr,
      ),
      child: Icon(
        icon,
        color: AppColors.white,
      ),
    );
  }
}
