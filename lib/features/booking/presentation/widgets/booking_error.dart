import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:flutter/material.dart';

class BookingErrorWidget extends StatelessWidget {
  final String errorMsg;
  const BookingErrorWidget({
    super.key,
    required this.errorMsg,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: AppSize.s80,
              color: Theme.of(context).highlightColor,
            ),
            SizedBox(
              height: AppHeight.h2,
            ),
            SecondaryText(
              text: errorMsg,
              maxLines: 2,
              center: true,
              isLight: true,
            ),
          ],
        ),
      ),
    );
  }
}
