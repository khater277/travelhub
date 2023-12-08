part of 'create_booking_cubit.dart';

@freezed
class CreateBookingState with _$CreateBookingState {
  const factory CreateBookingState.initial() = _Initial;
  const factory CreateBookingState.selectDate(DateTime date) = _SelectDate;
  const factory CreateBookingState.initCalenderControllers() =
      _InitCalenderControllers;
  const factory CreateBookingState.disposeCalenderControllers() =
      _DisposeCalenderControllers;
  const factory CreateBookingState.initBookingDetailsControllers() =
      _InitBookingDetailsControllers;
  const factory CreateBookingState.disposeBookingDetailsControllers() =
      _DisposeBookingDetailsControllers;
  const factory CreateBookingState.checkAvailableRoomsLoading() =
      _CheckAvailableRoomsLoading;
  const factory CreateBookingState.checkAvailableRoomsError(
      final String errorMsg) = _CheckAvailableRoomsError;
  const factory CreateBookingState.findAvailableRooms(
      final List<AvailableRoom> availableRooms,
      final CheckAvailabilityBody checkAvailabilityBody,
      final Holder holder) = _FindAvailableRooms;
  const factory CreateBookingState.noAvailableRooms() = _NoAvailableRooms;
}
