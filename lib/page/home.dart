// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:iqro/constants/color.dart';

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
                SizedBox(
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
          ],
        ));
  }
}

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
      style: TextStyle(
        fontSize: 16,
        color: AppColors.lazyr,
      ),
    );
  }
}

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
