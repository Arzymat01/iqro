import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqro/constants/color.dart';
import 'package:iqro/page/home.dart';
import 'package:iqro/page/page1.dart';
import 'package:iqro/page/tajvid_page.dart';

class MianView extends StatefulWidget {
  const MianView({super.key});

  @override
  State<MianView> createState() => _MianViewState();
}

class _MianViewState extends State<MianView> {
  int _selectedIndex = 0;
  List<Widget> pageList = [
    Home(),
    TajvidPage(),
    Page1(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: AppColors.lazyr,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100.0),
            ),
          ),
          child: Icon(
            Icons.home,
            color: AppColors.white,
          ),
          onPressed: () => setState(() {
            _selectedIndex = 1;
          }),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          onTap: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.person,
                color: AppColors.lazyr,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.menu_book,
                color: AppColors.lazyr,
              ),
            ),
          ],
        ),
      ),
      body: pageList.elementAt(_selectedIndex),
    );
  }
}
