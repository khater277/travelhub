import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/button.dart';
import 'package:travelhub/core/shared_widgets/snack_bar.dart';
import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/cubit/hotels_cubit.dart';
import 'package:travelhub/features/hotels/presentation/screens/hotel_details_screen.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotels/hotel_app_bar/page_title_and_description.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class AppBarImageData extends StatefulWidget {
  final int value;
  const AppBarImageData({
    super.key,
    required this.value,
  });

  @override
  State<AppBarImageData> createState() => _AppBarImageDataState();
}

class _AppBarImageDataState extends State<AppBarImageData> {
  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.bottomStart,
      child: BlocListener<HotelsCubit, HotelsState>(
        listener: (context, state) {
          state.maybeWhen(
            hotelsChangeOpacity: (opacity) => this.opacity = opacity,
            orElse: () {},
          );
        },
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(milliseconds: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              PageTitleAndDescription(
                title: locator<HotelsCubit>().pageViewData[widget.value].title,
                description: locator<HotelsCubit>()
                    .pageViewData[widget.value]
                    .description,
              ),
              SizedBox(height: AppHeight.h15),
              Padding(
                padding: EdgeInsets.only(
                  bottom: AppHeight.h30,
                  right: AppWidth.w230,
                  left: AppWidth.w10,
                ),
                child: CustomButton(
                  text: "View Hotel",
                  onPressed: () {
                    final hotel = locator<HotelsCubit>()
                        .hotels
                        .firstWhereOrNull((element) => element.city!.content!
                            .toLowerCase()
                            .contains(locator<HotelsCubit>()
                                .pageViewData[widget.value]
                                .title
                                .toLowerCase()));
                    if (hotel == null) {
                      showSnackBar(
                        context: context,
                        message:
                            "there is no hotels available in ${locator<HotelsCubit>().pageViewData[widget.value].title}",
                        color: AppColors.red,
                      );
                    } else {
                      Go.to(
                        context: context,
                        screen: HotelDetailsScreen(
                          hotel: hotel,
                          height: MediaQuery.sizeOf(context).height,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
