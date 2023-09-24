import 'package:flutter/material.dart';

import '../../constants/color.dart';

class ContainerTajvid extends StatelessWidget {
  const ContainerTajvid({
    Key? key,
    required this.icon2,
    required this.textmd,
    required this.texttm,
  }) : super(key: key);
  final IconData icon2;
  final String textmd;
  final String texttm;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.lazyr,
        ),
        height: 60,
        width: 360,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                icon2,
                color: AppColors.white,
                size: 35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 50, 0),
              child: Column(
                children: [
                  Text(
                    textmd,
                    style:
                        const TextStyle(color: AppColors.white, fontSize: 18),
                  ),
                  Text(
                    texttm,
                    style:
                        const TextStyle(color: AppColors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
