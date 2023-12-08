import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/core/shared_widgets/network_image.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/features/hotels/cubit/hotels_cubit.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/app_bar/flexible_space/hotel_info.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/app_bar/flexible_space/more_details_button.dart';

class FlexibleSpaceContent extends StatefulWidget {
  final Hotel hotel;
  const FlexibleSpaceContent({super.key, required this.hotel});

  @override
  State<FlexibleSpaceContent> createState() => _FlexibleSpaceContentState();
}

class _FlexibleSpaceContentState extends State<FlexibleSpaceContent> {
  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: CustomNetworkImage(
            imageUrl: AppStrings.imagesUrl +
                (widget.hotel.images == null
                    ? ""
                    : widget.hotel.images![0].path ?? ""),
            fit: BoxFit.fill,
          ),
        ),
        BlocConsumer<HotelsCubit, HotelsState>(
          listener: (context, state) {
            state.maybeWhen(
              hotelDetailsChangeOpacity: (opacity) => this.opacity = opacity,
              orElse: () {},
            );
          },
          builder: (context, state) {
            return AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(microseconds: 100),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    HotelInfoAppBar(hotel: widget.hotel),
                    const MoreDetailsButton(),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
