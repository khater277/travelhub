import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelhub/core/local_storage/bookings_storage.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:travelhub/features/booking/data/models/booking_list_model/booking_list_model.dart';
import 'package:travelhub/features/booking/data/models/pop_up_info/pop_up_info.dart';
import 'package:travelhub/features/booking/domain/usecases/get_my_bookings_use_case.dart';
import 'package:travelhub/features/booking/domain/usecases/update_my_booking.dart';
import 'package:travelhub/features/hotels/domain/usecases/hotel_usecases.dart';

part 'booking_cubit.freezed.dart';
part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  final GetMyBookingsUseCase getMyBookingsUseCase;
  final UpdateMyBookingUseCase updateMyBookingUseCase;
  final BookingsStorage bookingsStorage;

  BookingCubit({
    required this.getMyBookingsUseCase,
    required this.updateMyBookingUseCase,
    required this.bookingsStorage,
  }) : super(const BookingState.initial());

  List<BookingsListModel> bookings = [
    BookingsListModel(
      name: "Completed",
      list: [],
      popUpList: [
        PopUpInfo(
          text: "Upcoming",
          icon: Icons.upcoming,
          color: Colors.amber,
        ),
        PopUpInfo(
          text: "Cancelled",
          icon: Icons.cancel_outlined,
          color: Colors.red,
        ),
      ],
    ),
    BookingsListModel(
      name: "Upcoming",
      list: [],
      popUpList: [
        PopUpInfo(
          text: "Completed",
          icon: Icons.done_all_outlined,
          color: Colors.green,
        ),
        PopUpInfo(
          text: "Cancelled",
          icon: Icons.cancel_outlined,
          color: Colors.red,
        ),
      ],
    ),
    BookingsListModel(
      name: "Cancelled",
      list: [],
      popUpList: [
        PopUpInfo(
          text: "Completed",
          icon: Icons.done_all_outlined,
          color: Colors.green,
        ),
        PopUpInfo(
          text: "Upcoming",
          icon: Icons.upcoming,
          color: Colors.amber,
        ),
      ],
    ),
  ];

  // int tabBarIndex = 0;
  void changeTabBar(int index) {
    // tabBarIndex = index;
    // print(
    //     "=====>${HotelsStorage.getData()!.hotels![6].code!} + ${AppFunctions.generateSHA256()}");
    emit(BookingState.changeTabBar(index));
  }

  TabController? tabController;
  void initTabController(TickerProvider tickerProvider) {
    tabController = TabController(length: 3, vsync: tickerProvider);
    tabController!.addListener(() {
      changeTabBar(tabController!.index);
    });
  }

  void getMyBookings() async {
    emit(const BookingState.getMyBookingLoading());
    final response = await getMyBookingsUseCase.call(NoParams());
    response.fold(
      (failure) {
        if (!bookingsStorage.hasData()) {
          emit(BookingState.getMyBookingError(failure.getMessage()));
        } else {
          handleMyBookings(data: bookingsStorage.getAllData());
          emit(const BookingState.getMyBookingSuccess());
        }
      },
      (data) {
        debugPrint("=============>in success");
        handleMyBookings(data: data);
        emit(const BookingState.getMyBookingSuccess());
      },
    );
  }

  void handleMyBookings({required List<BookingDetailsModel> data}) {
    bookings[0] = bookings[0].copyWith(
        list: data.where((element) => element.type == "Completed").toList());
    bookings[1] = bookings[1].copyWith(
        list: data.where((element) => element.type == "Upcoming").toList());

    bookings[2] = bookings[2].copyWith(
        list: data.where((element) => element.type == "Cancelled").toList());
  }

  void updateMyBooking({required UpdateMyBookingParams params}) async {
    emit(BookingState.updateMyBookingLoading(params.bookingId));

    final response = await updateMyBookingUseCase.call(params);
    response.fold(
      (failure) =>
          emit(BookingState.updateMyBookingError(failure.getMessage())),
      (result) async {
        final getBookingResponse = await getMyBookingsUseCase.call(NoParams());
        getBookingResponse.fold(
          (failure) {
            handleMyBookings(data: bookingsStorage.getAllData());
            emit(const BookingState.updateMyBookingSuccess());
          },
          (data) {
            handleMyBookings(data: data);
            emit(const BookingState.updateMyBookingSuccess());
          },
        );
      },
    );
  }
}
