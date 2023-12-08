part of 'hotels_cubit.dart';

@freezed
class HotelsState with _$HotelsState {
  const factory HotelsState.initial() = _Initial;
  const factory HotelsState.disposeHotelsScreen() = _DisposeHotelsScreen;
  const factory HotelsState.disposeHotelDetailsScreen() =
      _DisposeHotelDetailsScreen;
  const factory HotelsState.changePageViewIndex(int index) =
      _ChangePageViewIndex;
  const factory HotelsState.hotelsChangeOpacity({required double opacity}) =
      _HotelsChangeOpacity;
  const factory HotelsState.hotelDetailsChangeOpacity(
      {required double opacity}) = _HotelsDetailChangeOpacity;
  const factory HotelsState.getHotelsLoading() = _GetHotelsLoading;
  const factory HotelsState.getHotels() = _GetHotels;
  const factory HotelsState.getHotelsError(String errorMsg) = _GetHotelsError;
  const factory HotelsState.getFacilities() = _GetFacilities;
  const factory HotelsState.getFacilitiesError(String errorMsg) =
      _GetFacilitiesError;
}
