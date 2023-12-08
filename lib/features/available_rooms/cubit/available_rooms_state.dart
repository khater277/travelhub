part of 'available_rooms_cubit.dart';

@freezed
class AvailableRoomsState with _$AvailableRoomsState {
  const factory AvailableRoomsState.initial() = _Initial;
  const factory AvailableRoomsState.initConfirmBookingDetailsControllers() =
      _initConfirmBookingDetailsControllers;
  const factory AvailableRoomsState.disposeConfirmBookingDetailsControllers() =
      _disposeConfirmBookingDetailsControllers;
  const factory AvailableRoomsState.createBookingLoading() =
      _CreateBookingLoading;
  const factory AvailableRoomsState.createBookingSuccess() =
      _CreateBookingSuccess;
  const factory AvailableRoomsState.createBookingError(final String errorMsg) =
      _CreateBookingError;
}
