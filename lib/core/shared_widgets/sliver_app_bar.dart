import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      snap: false,
      floating: false,
      expandedHeight: AppHeight.h200,
      flexibleSpace: Padding(
        padding: EdgeInsets.only(top: AppHeight.h20),
        child: FlexibleSpaceBar(
          background: Container(
            height: AppHeight.h200,
            width: double.infinity,
            color: AppColors.teal,
          ),
        ),
      ),
    );
  }
}
