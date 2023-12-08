import 'package:travelhub/core/utils/app_colors.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelRating extends StatelessWidget {
  final double rate;
  final bool isMap;
  const HotelRating({super.key, required this.rate, this.isMap = false});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rate,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      ignoreGestures: true,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: AppColors.teal,
      ),
      itemSize: isMap ? AppSize.s15 : AppSize.s20,
      onRatingUpdate: (rating) {
        debugPrint(rating.toString());
      },
    );
  }
}
