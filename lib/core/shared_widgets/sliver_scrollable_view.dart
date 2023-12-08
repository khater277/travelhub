import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class SliverScrollableView extends StatelessWidget {
  final ScrollController? controller;
  final bool isScrollable;
  final Widget sliverAppBar;
  final Widget child;

  const SliverScrollableView({
    super.key,
    this.controller,
    required this.isScrollable,
    required this.sliverAppBar,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      physics: const BouncingScrollPhysics(),
      slivers: [
        sliverAppBar,
        if (isScrollable)
          SliverToBoxAdapter(
            child: child,
          )
        else
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(
                right: AppWidth.w10,
                left: AppWidth.w10,
                top: AppHeight.h5,
              ),
              child: child,
            ),
          )
      ],
    );
  }
}
