import 'package:travelhub/core/utils/constants.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/body/holder.dart';
import 'package:travelhub/features/create_booking/data/models/body/check_availability_body.dart';
import 'package:travelhub/features/create_booking/data/models/body/hotels.dart';
import 'package:travelhub/features/create_booking/data/models/body/occupancy.dart';
import 'package:travelhub/features/create_booking/data/models/body/stay.dart';
import 'package:travelhub/features/create_booking/data/models/response/room.dart';
import 'package:travelhub/features/create_booking/domain/usecases/check_availability_use_case.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

part 'create_booking_cubit.freezed.dart';
part 'create_booking_state.dart';

class CreateBookingCubit extends Cubit<CreateBookingState> {
  final CheckAvailabilityUseCase checkAvailabilityUseCase;
  CreateBookingCubit({required this.checkAvailabilityUseCase})
      : super(const CreateBookingState.initial());

  DateRangePickerController? dateRangePickerController;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? checkInController;
  TextEditingController? checkOutController;
  SingleValueDropDownController? adultsController;
  SingleValueDropDownController? childrenController;

  List<DropDownValueModel> dropDownList = [
    const DropDownValueModel(name: '0', value: 0),
    const DropDownValueModel(name: '1', value: 1),
    const DropDownValueModel(name: '2', value: 2),
    const DropDownValueModel(name: '3', value: 3),
    const DropDownValueModel(name: '4', value: 4),
  ];

  void initCreateBookingControllers() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    checkInController = TextEditingController();
    checkOutController = TextEditingController();
    adultsController = SingleValueDropDownController();
    childrenController = SingleValueDropDownController();
    emit(const CreateBookingState.initBookingDetailsControllers());
  }

  void disposeCreateBookingControllers() {
    firstNameController!.dispose();
    lastNameController!.dispose();
    checkInController!.dispose();
    checkOutController!.dispose();
    adultsController!.dispose();
    childrenController!.dispose();
    checkInDate = null;
    checkOutDate = null;
    emit(const CreateBookingState.disposeBookingDetailsControllers());
  }

  DateTime? checkInDate;
  DateTime? checkOutDate;
  void initCalenderControllers() {
    dateRangePickerController = DateRangePickerController();
    emit(const CreateBookingState.initCalenderControllers());
  }

  void disposeCalenderControllers() {
    dateRangePickerController!.dispose();
    emit(const CreateBookingState.disposeCalenderControllers());
  }

  void selectDate({
    required DateTime date,
    required Check check,
  }) {
    if (check == Check.IN) {
      checkInDate = date;
      checkInController!.text = DateFormat('yyyy-MM-dd').format(date);
    } else if (check == Check.OUT) {
      checkOutDate = date;
      checkOutController!.text = DateFormat('yyyy-MM-dd').format(date);
    }
    emit(CreateBookingState.selectDate(date));
  }

  // List<AvailableRoom> availableRooms = [];
  CheckAvailabilityBody? checkAvailabilityBody;
  void checkAvailableRooms({
    required int hotelId,
  }) async {
    emit(const CreateBookingState.checkAvailableRoomsLoading());

    Holder holder = Holder(
      name: firstNameController!.text,
      surname: lastNameController!.text,
    );

    checkAvailabilityBody = CheckAvailabilityBody(
      stay: Stay(
        checkIn: checkInController!.text,
        checkOut: checkOutController!.text,
      ),
      occupancies: [
        Occupancy(
          rooms: 1,
          adults: adultsController!.dropDownValue!.value!,
          children: childrenController!.dropDownValue!.value!,
        ),
      ],
      availabilityBodyHotels: Hotels(availabilityBodyHotel: [hotelId]),
    );

    final response =
        await checkAvailabilityUseCase.call(checkAvailabilityBody!);
    response.fold((failure) {
      emit(CreateBookingState.checkAvailableRoomsError(failure.getMessage()));
    }, (checkAvailabilityResponse) {
      if (checkAvailabilityResponse.availableHotels!.total != 0) {
        List<AvailableRoom> availableRooms = checkAvailabilityResponse
            .availableHotels!.availableHotels![0].availableRooms!;
        emit(CreateBookingState.findAvailableRooms(
            availableRooms, checkAvailabilityBody!, holder));
      } else {
        emit(const CreateBookingState.noAvailableRooms());
      }
    });
  }
}
