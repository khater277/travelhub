import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/core/utils/font_styles.dart';
import 'package:travelhub/features/maps/cubit/maps_cubit.dart';
import 'package:travelhub/features/maps/presentation/widgets/search_results/search_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class MapFloatingSearch extends StatefulWidget {
  const MapFloatingSearch({super.key});

  @override
  State<MapFloatingSearch> createState() => _MapFloatingSearchState();
}

class _MapFloatingSearchState extends State<MapFloatingSearch> {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return BlocBuilder<MapsCubit, MapsState>(
      builder: (context, state) {
        return FloatingSearchBar(
          controller: locator<MapsCubit>().floatingSearchBarController,
          elevation: 0.0,
          hintStyle:
              getMediumStyle(fontColor: Theme.of(context).highlightColor),
          queryStyle: getSemiBoldStyle(fontColor: Theme.of(context).focusColor),
          hint: 'Find a place..',
          border: const BorderSide(style: BorderStyle.none),
          margins: EdgeInsets.fromLTRB(
            AppWidth.w20,
            AppHeight.h30,
            AppWidth.w20,
            // 15.0,
            AppHeight.h20,
          ),
          padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
          height: AppHeight.h45,
          backgroundColor: Theme.of(context).hintColor,
          iconColor: AppColors.teal,
          scrollPadding:
              EdgeInsets.only(top: AppHeight.h1, bottom: AppHeight.h40),
          transitionDuration: const Duration(milliseconds: 600),
          transitionCurve: Curves.easeInOut,
          physics: const BouncingScrollPhysics(),
          axisAlignment: isPortrait ? 0.0 : -1.0,
          openAxisAlignment: 0.0,
          width: isPortrait ? AppWidth.w600 : AppWidth.w500,
          debounceDelay: const Duration(milliseconds: 500),
          progress: false,
          borderRadius: BorderRadius.circular(AppSize.s20),
          onQueryChanged: (query) {
            locator<MapsCubit>().searchHotel();
          },
          transition: CircularFloatingSearchBarTransition(),
          builder: (context, transition) {
            if (locator<MapsCubit>()
                .floatingSearchBarController
                .query
                .isEmpty) {
              return const SizedBox();
            } else {
              // ignore: prefer_const_constructors
              return  SearchResult();
            }
          },
        );
      },
    );
  }
}
