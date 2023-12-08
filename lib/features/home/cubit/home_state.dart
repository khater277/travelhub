part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.changeNavBarStateLoading() =
      _ChangeNavBarStateLoading;
  const factory HomeState.changeNavBarState(int index) = _ChangeNavBarState;
}
