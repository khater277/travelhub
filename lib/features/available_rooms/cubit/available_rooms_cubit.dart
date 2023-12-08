import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/local_storage/user_storage.dart';
import 'package:travelhub/features/available_rooms/data/models/check_rate/body/check_rate_body.dart';
import 'package:travelhub/features/available_rooms/data/models/check_rate/body/room.dart';
import 'package:travelhub/features/available_rooms/data/models/check_rate/response/check_rate_response.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/body/create_booking_body.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/body/holder.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/body/room.dart';
import 'package:travelhub/features/available_rooms/domain/usecases/add_booking_to_fire_store_use_case.dart';
import 'package:travelhub/features/available_rooms/domain/usecases/check_rate_use_case.dart';
import 'package:travelhub/features/available_rooms/domain/usecases/create_booking_use_case.dart';
import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:travelhub/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:travelhub/features/create_booking/data/models/response/rate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

part 'available_rooms_cubit.freezed.dart';
part 'available_rooms_state.dart';

class AvailableRoomsCubit extends Cubit<AvailableRoomsState> {
  final CheckRateUseCase checkRateUseCase;

  final CreateBookingUseCase createBookingUseCase;
  final AddBookingToFirestoreUseCase addBookingToFirestoreUsecase;
  AvailableRoomsCubit({
    required this.checkRateUseCase,
    required this.createBookingUseCase,
    required this.addBookingToFirestoreUsecase,
  }) : super(const AvailableRoomsState.initial());

  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? checkInController;
  TextEditingController? checkOutController;
  TextEditingController? adultsController;
  TextEditingController? childrenController;
  TextEditingController? categoryController;
  TextEditingController? boardController;
  TextEditingController? priceController;

  void initConfirmBookingControllers({
    required CheckAvailabilityBody checkAvailabilityBody,
    required AvailableRate availableRate,
    required String roomName,
    required Holder holder,
  }) {
    firstNameController = TextEditingController(text: holder.name!);
    lastNameController = TextEditingController(text: holder.surname!);
    checkInController =
        TextEditingController(text: checkAvailabilityBody.stay!.checkIn!);
    checkOutController =
        TextEditingController(text: checkAvailabilityBody.stay!.checkOut!);
    adultsController = TextEditingController(
        text: checkAvailabilityBody.occupancies![0].adults!.toString());
    childrenController = TextEditingController(
        text: checkAvailabilityBody.occupancies![0].children!.toString());
    categoryController = TextEditingController(text: roomName);
    boardController = TextEditingController(text: availableRate.boardName!);
    priceController = TextEditingController(text: availableRate.net!);
    emit(const AvailableRoomsState.initConfirmBookingDetailsControllers());
  }

  void disposeConfirmBookingControllers() {
    firstNameController!.dispose();
    lastNameController!.dispose();
    checkInController!.dispose();
    checkOutController!.dispose();
    adultsController!.dispose();
    childrenController!.dispose();
    categoryController!.dispose();
    boardController!.dispose();
    priceController!.dispose();
    emit(const AvailableRoomsState.disposeConfirmBookingDetailsControllers());
  }

  Future<CheckRateResponse?> checkRoomRate({required String rateKey}) async {
    CheckRateResponse? result;
    CheckRateBody params =
        CheckRateBody(rateRooms: [RateRoom(rateKey: rateKey)]);
    final response = await checkRateUseCase.call(params);
    response.fold(
      (failure) {
        emit(AvailableRoomsState.createBookingError(
          failure.getMessage(),
        ));
      },
      (checkRateResponse) {
        result = checkRateResponse;
      },
    );
    return result;
  }

  void createBooking({
    required String rateKey,
    required int hotelId,
  }) async {
    emit(const AvailableRoomsState.createBookingLoading());
    final checkRateResponse = await checkRoomRate(rateKey: rateKey);
    if (checkRateResponse != null) {
      CreateBookingBody params = CreateBookingBody(
        holder: Holder(
          name: firstNameController!.text,
          surname: lastNameController!.text,
        ),
        bookingRooms: [BookingRoom(rateKey: rateKey)],
        clientReference: "IntegrationAgency",
        remark: "Booking remarks are to be written here.",
        tolerance: 2,
      );
      final response = await createBookingUseCase.call(params);
      response.fold(
        (failure) {
          emit(AvailableRoomsState.createBookingError(
            failure.getMessage(),
          ));
        },
        (createBookingResponse) async {
          await addBookingToFirestore(hotelId: hotelId);
        },
      );
    }
  }

  Future<void> addBookingToFirestore({required int hotelId}) async {
    final bookingId = const Uuid().v4();

    BookingDetailsModel bookingDetailsModel = BookingDetailsModel(
      bookingId: bookingId,
      hotelId: hotelId,
      createdAt: DateFormat('yyyy-MM-dd').format(DateTime.now()),
      firstName: firstNameController!.value.text,
      lastName: lastNameController!.value.text,
      checkIn: checkInController!.value.text,
      checkOut: checkOutController!.value.text,
      adults: int.parse(adultsController!.value.text),
      children: int.parse(childrenController!.value.text),
      category: categoryController!.value.text,
      board: boardController!.value.text,
      price: priceController!.value.text,
      type: "Upcoming",
    );
    final params = AddBookingToFireStoreParams(
      bookingId: bookingId,
      userId: locator<UserStorage>().getData(id: HiveKeys.currentUser)!.uid!,
      bookingDetails: bookingDetailsModel,
    );
    final response = await addBookingToFirestoreUsecase.call(params);
    response.fold(
      (failure) =>
          emit(AvailableRoomsState.createBookingError(failure.getMessage())),
      (bookingDetails) =>
          emit(const AvailableRoomsState.createBookingSuccess()),
    );
  }
}

//