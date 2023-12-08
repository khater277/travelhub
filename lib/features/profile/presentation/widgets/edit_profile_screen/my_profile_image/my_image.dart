import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/core/utils/app_values.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: AppSize.s60,
      backgroundColor: Colors.grey.withOpacity(0.1),
      backgroundImage: CachedNetworkImageProvider(
          locator<UserStorage>().getData(id: HiveKeys.currentUser)!.image!),
    );
  }
}
