part of 'maps_cubit.dart';

@freezed
class MapsState with _$MapsState {
  const factory MapsState.initial() = _Initial;
  const factory MapsState.getPlacesSuggestionsLoading() =
      _GetPlacesSuggestionsLoading;
  const factory MapsState.getPlacesSuggestionsSuccess() =
      _GetPlacesSuggestionsSuccess;
  const factory MapsState.getPlacesSuggestionsError() =
      _GetPlacesSuggestionsError;
  const factory MapsState.createMap() = _CreateMap;
  const factory MapsState.moveCameraOnMap() = _MoveCameraOnMap;
  const factory MapsState.tapOnMap() = _TapOnMap;
  const factory MapsState.setMapMarkers() = _SetMapMarkers;
  const factory MapsState.jumpToPosition() = _JumpToPosition;
  const factory MapsState.searchHotel(String text) = _SearchHotel;
  const factory MapsState.changeHotelCurrentIndex() = _ChangeHotelCurrentIndex;
  const factory MapsState.addPageRequest() = _AddPageRequest;
}
