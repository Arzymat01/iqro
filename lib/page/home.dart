// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:iqro/constants/color.dart';

import '../components/containers/categoy.dart';
import '../components/containers/iconOclock.dart';
import '../components/containers/textOclock.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: AppColors.lazyr,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: AppColors.white,
              ),
              height: 25,
              width: 120,
              child: const Center(
                child: Text(
                  'Премиум',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: AppColors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: AppColors.white,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 25),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.lazyr),
                  height: 150,
                  width: 400,
                  child: Row(
                    children: [
                      const Text(
                        '    Ислам того, кто не причиняет \n   другим мусульманам вреда \n   своим языком и своими \n    руками, является/t наилучшим.',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 13,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 40),
                        child: Image.asset('assets/imag/ima1.png'),
                      )
                    ],
                  ),
                ),
              ),
              const Text(
                'БИШКЕК',
                style: TextStyle(
                  color: AppColors.lazyr,
                  fontSize: 20,
                ),
              ),
              const Text(
                '12:00',
                style: TextStyle(
                  color: AppColors.lazyr,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconOclock(
                    icon: Icons.schedule,
                  ),
                  IconOclock(
                    icon: Icons.schedule,
                  ),
                  IconOclock(
                    icon: Icons.schedule,
                  ),
                  IconOclock(
                    icon: Icons.schedule,
                  ),
                  IconOclock(
                    icon: Icons.schedule,
                  ),
                  IconOclock(
                    icon: Icons.schedule,
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextOclock(
                    text: '4:52',
                  ),
                  TextOclock(
                    text: '6:32',
                  ),
                  TextOclock(
                    text: '13:32',
                  ),
                  TextOclock(
                    text: '16:2',
                  ),
                  TextOclock(
                    text: '19:29',
                  ),
                  TextOclock(
                    text: '21:12',
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ContainerCategory(
                      icon1: Icons.book,
                      text1: 'Таджвид',
                    ),
                    ContainerCategory(
                      icon1: Icons.music_note,
                      text1: 'Куран угуу',
                    ),
                    ContainerCategory(
                      icon1: Icons.home,
                      text1: 'Мечит',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ContainerCategory(
                      icon1: Icons.book,
                      text1: 'Ислам календары',
                    ),
                    ContainerCategory(
                      icon1: Icons.music_note,
                      text1: 'Дуба',
                    ),
                    ContainerCategory(
                      icon1: Icons.home,
                      text1: 'Тасби',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ContainerCategory(
                      icon1: Icons.book,
                      text1: 'Аллахтын ысымдары',
                    ),
                    ContainerCategory(
                      icon1: Icons.music_note,
                      text1: 'Компас',
                    ),
                    ContainerCategory(
                      icon1: Icons.home,
                      text1: 'Ашканалар',
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
