import 'package:travelhub/app/locator.dart';
import 'package:travelhub/features/home/cubit/home_cubit.dart';
import 'package:travelhub/features/home/presentation/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        state.maybeWhen(
          changeNavBarState: (index) => this.index = index,
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: locator<HomeCubit>().pages[index],
          extendBody: true,
          bottomNavigationBar: AppBottomNavBar(index: index),
        );
      },
    );
  }
}
