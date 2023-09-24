// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants/color.dart';

class ContainerCategory extends StatelessWidget {
  const ContainerCategory({
    Key? key,
    required this.icon1,
    required this.text1,
  }) : super(key: key);
  final IconData icon1;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.lazyr,
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(
              icon1,
              color: AppColors.white,
              size: 40,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              text1,
              style: TextStyle(color: AppColors.white, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
