// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:iqro/constants/color.dart';

import '../components/containers/tajvidConatiner.dart';

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
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.white,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: AppColors.lazyr,
        title: const Text(
          'Сабак',
          style: TextStyle(
            color: AppColors.white,
          ),
        ),
      ),
      body: ListView(
        children: const [
          Column(
            children: [
              ContainerTajvid(
                icon2: Icons.settings,
                textmd: '1-модуль',
                texttm: 'Куран алипеси',
              ),
              ContainerTajvid(
                icon2: Icons.settings,
                textmd: '2-модуль',
                texttm: 'Тажвид',
              ),
              ContainerTajvid(
                icon2: Icons.settings,
                textmd: '3-модуль',
                texttm: 'Куран алипеси',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
