import 'package:travelhub/features/hotels/data/models/hotels_response_model/image.dart'
    as h;
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/body/hotel_photos/head.dart';
import 'package:travelhub/features/hotels/presentation/widgets/hotel_details/body/hotel_photos/show_photos.dart';
import 'package:flutter/material.dart';

class HotelPhotos extends StatelessWidget {
  final List<h.Image> images;
  const HotelPhotos({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PhotosHead(),
          ShowPhotos(images: images),
        ],
      ),
    );
  }
}
