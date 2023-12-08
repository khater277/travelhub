import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class NotMatchingSearchResults extends StatelessWidget {
  const NotMatchingSearchResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LargeHeadText(
      size: FontSize.s14,
      maxLines: 3,
      isEllipsis: false,
      text: "no matching results",
    );
  }
}
