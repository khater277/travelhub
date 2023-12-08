import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class AuthHead extends StatelessWidget {
  final String title;
  const AuthHead({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topStart,
      child: LargeHeadText(text: title, size: FontSize.s24),
    );
  }
}
