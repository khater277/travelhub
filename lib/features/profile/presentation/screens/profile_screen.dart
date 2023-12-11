import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/profile/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelhub/features/profile/presentation/widgets/profile_screen/head.dart';
import 'package:travelhub/features/profile/presentation/widgets/profile_screen/items_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppWidth.w15,
              ).add(EdgeInsets.only(top: AppHeight.h30)),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ignore: prefer_const_constructors
                    ProfileHead(),
                    SizedBox(height: AppHeight.h40),
                    // ignore: prefer_const_constructors
                    ProfileItemsList(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
