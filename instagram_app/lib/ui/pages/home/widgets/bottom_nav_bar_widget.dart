import 'package:flutter/material.dart';
import 'package:instagram_app/utils/constants/app_assets.dart';
import 'package:instagram_app/utils/constants/app_colors.dart';
import 'package:instagram_app/utils/constants/app_paddings.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: AppPaddings.h10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(27),
          child: BottomNavigationBar(
            selectedItemColor: AppColors.black,
            selectedIconTheme: const IconThemeData(color: AppColors.black),
            unselectedItemColor: AppColors.black,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.white,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(AppAssets.homeIcon,
                    width: 24, height: 24),
                label: '',
              ),
             BottomNavigationBarItem(
                icon: Image.asset(AppAssets.searchIcon,
                    width: 24, height: 24),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(AppAssets.addIcon,
                    width: 24, height: 24),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(AppAssets.likeIcon,
                    width: 24, height: 24),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(AppAssets.storyImg1,
                    width: 24, height: 24),
                label: '',
              ),
            ],
          ),
        ));
  }
}
