import 'package:flutter/material.dart';

class TajvidPage extends StatefulWidget {
  const TajvidPage({Key? key}) : super(key: key);

  @override
  _TajvidPageState createState() => _TajvidPageState();
}

class _TajvidPageState extends State<TajvidPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TajvidPage'),
      ),
      body: Column(children: [Image.asset('assets/imag/chop.png')]),
    );
  }
}
