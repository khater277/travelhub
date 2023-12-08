import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/home/cubit/home_cubit.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class AppBottomNavBar extends StatelessWidget {
  final int index;
  const AppBottomNavBar({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: AppHeight.h1),
      child: DotNavigationBar(
        curve: Curves.easeIn,
        currentIndex: index,
        onTap: (index) => locator<HomeCubit>().changeNavBar(index: index),
        marginR: EdgeInsets.symmetric(horizontal: AppWidth.w20)
            .add(EdgeInsets.only(bottom: AppHeight.h2)),
        dotIndicatorColor: Colors.transparent,
        selectedItemColor: AppColors.teal,
        unselectedItemColor: AppColors.grey.withOpacity(0.7),
        backgroundColor: Theme.of(context).inputDecorationTheme.fillColor,
        itemPadding: EdgeInsets.only(
          left: AppWidth.w20,
          right: AppWidth.w20,
          top: AppHeight.h5,
        ),
        borderRadius: AppSize.s50,
        items: [
          DotNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: AppSize.s24,
            ),
          ),
          DotNavigationBarItem(
            icon: Icon(
              Icons.bookmark_outline_outlined,
              size: AppSize.s24,
            ),
          ),
          DotNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: AppSize.s24,
            ),
          ),
        ],
      ),
    );
  }
}
