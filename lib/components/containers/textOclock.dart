import 'package:flutter/cupertino.dart';

import '../../constants/color.dart';

class TextOclock extends StatelessWidget {
  const TextOclock({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: AppColors.lazyr,
      ),
    );
  }
}
