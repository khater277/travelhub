import 'package:travelhub/core/shared_widgets/network_image.dart';
import 'package:travelhub/core/utils/app_strings.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/image.dart'
    as h;
import 'package:flutter/material.dart';

class ShowPhotos extends StatelessWidget {
  final List<h.Image> images;
  const ShowPhotos({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: SizedBox(
        height: AppSize.s120,
        child: ListView.separated(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: AppWidth.w10),
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: AppSize.s100,
              height: AppSize.s120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s10),
                child: CustomNetworkImage(
                  imageUrl: AppStrings.imagesUrl + images[index].path!,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
