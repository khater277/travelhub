import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/app/locator.dart';
import 'package:travelhub/config/navigation.dart';
import 'package:travelhub/core/shared_widgets/circle_indicator.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';

class SaveAndCancelButtons extends StatelessWidget {
  final TextEditingController nameController;
  const SaveAndCancelButtons({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () => Go.back(context: context),
          child: const Text("CANCEL"),
        ),
        BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              updateMyNameLoading: () => CustomCircleIndicator(
                strokeWidth: 1,
                size: AppSize.s18,
              ),
              orElse: () => TextButton(
                onPressed: () => state.maybeWhen(
                  updateMyNameLoading: () => () {},
                  orElse: () => locator<ProfileCubit>()
                      .updateMyName(name: nameController.text),
                ),
                child: const Text("SAVE"),
              ),
            );
          },
        ),
      ],
    );
  }
}
