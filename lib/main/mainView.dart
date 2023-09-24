import 'package:flutter/material.dart';
import 'package:iqro/constants/color.dart';
import 'package:iqro/page/home.dart';
import 'package:iqro/page/user.dart';
import 'package:iqro/page/tajvid_page.dart';

class MianView extends StatefulWidget {
  const MianView({super.key});

  @override
  State<MianView> createState() => _MianViewState();
}

class _MianViewState extends State<MianView> {
  int _selectedIndex = 0;
  List<Widget> pageList = [
    User(),
    Home(),
    TajvidPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.lazyr,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100.0),
          ),
        ),
        onPressed: () {
          setState(() {
            _selectedIndex = 1;
          });
        },
        child: const Icon(
          Icons.home,
          color: AppColors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        height: 70,
        child: SizedBox(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.lazyr),
                child: IconButton(
                  iconSize: 25.0,
                  icon: const Icon(
                    Icons.person,
                    color: AppColors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.lazyr),
                child: IconButton(
                  iconSize: 25.0,
                  icon: const Icon(
                    Icons.menu_book,
                    color: AppColors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
      body: pageList.elementAt(_selectedIndex),
    );
  }
}
