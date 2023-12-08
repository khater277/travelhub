part of 'booking_cubit.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;
  const factory BookingState.initTabController() = _InitTabController;
  const factory BookingState.changeTabBar(int index) = _ChangeTabBar;
  const factory BookingState.selectDate() = _SelectDate;
  const factory BookingState.initCalenderControllers() =
      _InitCalenderControllers;
  const factory BookingState.disposeCalenderControllers() =
      _DisposeCalenderControllers;
  const factory BookingState.initBookingDetailsControllers() =
      _InitBookingDetailsControllers;
  const factory BookingState.disposeBookingDetailsControllers() =
      _DisposeBookingDetailsControllers;
  const factory BookingState.getMyBookingLoading() = _GetMyBookingLoading;
  const factory BookingState.getMyBookingSuccess() = _GetMyBookingSuccess;
  const factory BookingState.getMyBookingError(final String errorMsg) =
      _GetMyBookingError;

  const factory BookingState.updateMyBookingLoading(String bookingId) =
      _UpdateMyBookingLoading;
  const factory BookingState.updateMyBookingSuccess() = _UpdateMyBookingSuccess;
  const factory BookingState.updateMyBookingError(final String errorMsg) =
      _UpdateMyBookingError;
  // const factory BookingState.updateMyBookingLoading() = _UpdateMyBookingLoading;
  // const factory BookingState.updateMyBookingSuccess() = _UpdateMyBookingSuccess;
  // const factory BookingState.updateMyBookingError(final String errorMsg) =
  //     _UpdateMyBookingError;
}
