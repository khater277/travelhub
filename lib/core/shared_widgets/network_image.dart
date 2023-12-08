import 'package:cached_network_image/cached_network_image.dart';
import 'package:travelhub/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  const CustomNetworkImage(
      {super.key, required this.imageUrl, required this.fit});

  Future<bool> checkInternet() async {
    bool? result;
    InternetConnectionChecker().hasConnection.then((value) => result = value);
    return result!;
    // return await InternetConnectionChecker().hasConnection;
  }

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      placeholder: (context, s) => Center(
        child: Image.asset(AppImages.loading),
      ),
      errorWidget: (
        BuildContext context,
        String url,
        dynamic error,
      ) {
        return Center(
          child: Image.asset(AppImages.error),
        );
      },
    );
  }
}
