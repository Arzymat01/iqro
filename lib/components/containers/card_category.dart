import 'package:flutter/material.dart';

import '../models/model_home.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({
    Key? key,
    required this.choice,
  }) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.orange,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Icon(
                  choice.icon,
                  size: 50.0,
                )),
                Text(
                  choice.title,
                ),
              ]),
        ));
  }
}
