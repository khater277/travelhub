import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/shared_widgets/circle_indicator.dart';
import 'package:travelhub/core/shared_widgets/no_items_founded.dart';
import 'package:travelhub/core/shared_widgets/sliver_scrollable_view.dart';
import 'package:travelhub/core/shared_widgets/snack_bar.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/icons_broken.dart';
import 'package:travelhub/features/hotels/cubit/hotels_cubit.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/best_deals_head.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_app_bar/hotels_app_bar.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_info_card/hotel_info_card.dart';

class HotelsScreen extends StatefulWidget {
  const HotelsScreen({super.key});

  @override
  State<HotelsScreen> createState() => _HotelsScreenState();
}

class _HotelsScreenState extends State<HotelsScreen> {
  @override
  void initState() {
    locator<HotelsCubit>().initHotelsScreen();
    // .changeHotelsOpacity();
    super.initState();
  }

  @override
  void dispose() {
    locator<HotelsCubit>().disposeHotelsScreen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HotelsCubit, HotelsState>(
      listener: (context, state) {
        state.maybeWhen(
          getHotelsError: (errorMsg) => showSnackBar(
            context: context,
            message: errorMsg,
            color: AppColors.red,
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          getHotelsLoading: () => const Center(child: CustomCircleIndicator()),
          orElse: () => locator<HotelsCubit>().hotels.isEmpty
              ? const NoItemsFounded(
                  text: "There is something wrong, no hotels to show.",
                  icon: IconBroken.Home,
                )
              : SliverScrollableView(
                  controller: locator<HotelsCubit>().hotelsScrollController!,
                  isScrollable: locator<HotelsCubit>().hotels.isNotEmpty,
                  // ignore: prefer_const_constructors
                  sliverAppBar: HotelsAppBar(),
                  child: Column(
                    children: [
                      const BestDealsHead(),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: locator<HotelsCubit>().hotels.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 10),
                        itemBuilder: (BuildContext context, int index) =>
                            HotelInfoCard(
                                hotel: locator<HotelsCubit>().hotels[index]),
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
