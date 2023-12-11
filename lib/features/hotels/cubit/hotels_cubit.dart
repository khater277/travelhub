import 'package:travelhub/core/local_storage/facilities_storage.dart';
import 'package:travelhub/core/local_storage/hotels_storage.dart';
import 'package:travelhub/core/local_storage/keys.dart';
import 'package:travelhub/core/utils/app_images.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/facilities_params_model/facilities_body_model/facilities_params_model.dart';
import 'package:travelhub/features/hotels/data/models/facilities_response_model/facility_info.dart';
import 'package:travelhub/features/hotels/data/models/hotel_page_view/hotel_page_view_model.dart';
import 'package:travelhub/features/hotels/data/models/hotels_params_model/hotels_params_model.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/hotels/domain/usecases/facilities_use_case.dart';
import 'package:travelhub/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotels_cubit.freezed.dart';
part 'hotels_state.dart';

class HotelsCubit extends Cubit<HotelsState> {
  final GetHotelsUseCase getHotelsUseCase;
  final GetFacilitiesUseCase getFacilitiesUseCase;
  final FacilitiesStorage facilitiesStorage;
  final HotelsStorage hotelsStorage;
  HotelsCubit({
    required this.getHotelsUseCase,
    required this.getFacilitiesUseCase,
    required this.facilitiesStorage,
    required this.hotelsStorage,
  }) : super(const HotelsState.initial());

  List<HotelPageViewModel> pageViewData = [
    HotelPageViewModel(
      image: AppImages.cairo,
      title: "Cairo",
      description: "The islamic and current capital of Egypt.",
    ),
    HotelPageViewModel(
      image: AppImages.alexandria,
      title: "Alexandria",
      description: "City has been built by Alexander the great.",
    ),
    HotelPageViewModel(
      image: AppImages.luxor,
      title: "Luxor",
      description: "The old capital of Egypt.",
    ),
  ];

  PageController? hotelsPageController;
  ScrollController? hotelsScrollController;

  void initHotelsScreen() {
    hotelsPageController = PageController();
    hotelsScrollController = ScrollController();
    changeHotelsOpacity();
    // emit(const HotelsState.initHotelsScreen());
  }

  void disposeHotelsScreen() {
    hotelsPageController!.dispose();
    hotelsScrollController!.dispose();
    emit(const HotelsState.disposeHotelsScreen());
  }

  void changeHotelsOpacity() {
    double opacity = 1.0;
    hotelsScrollController!.addListener(() {
      if (hotelsScrollController!.offset <= 0) {
        opacity = 1;
      } else if ((hotelsScrollController!.offset) <=
          (AppHeight.h320 - AppHeight.h150)) {
        opacity = 1.0 -
            ((hotelsScrollController!.offset) /
                (AppHeight.h320 - AppHeight.h150));
      } else {
        opacity = 0.0;
      }
      emit(HotelsState.hotelsChangeOpacity(opacity: opacity));
    });
  }

  ScrollController? hotelDetailsScrollController;
  void initHotelDetailsScreen({
    required double height,
  }) {
    hotelDetailsScrollController = ScrollController();
    changeHotelDetailsOpacity(height: height * 0.75);
  }

  void disposeHotelDetailsScreen() {
    hotelDetailsScrollController!.dispose();
    emit(const HotelsState.disposeHotelDetailsScreen());
  }

  void changeHotelDetailsOpacity({required double height}) {
    double opacity = 1.0;
    hotelDetailsScrollController!.addListener(() {
      if (hotelDetailsScrollController!.offset <= 0) {
        opacity = 1;
      } else if ((hotelDetailsScrollController!.offset) <= height) {
        opacity = 1.0 - ((hotelDetailsScrollController!.offset) / height);
      } else {
        opacity = 0.0;
      }
      emit(HotelsState.hotelDetailsChangeOpacity(opacity: opacity));
    });
  }

  List<Hotel> hotels = [];
  List<FacilityInfo> facilities = [];
  void getInit() async {
    emit(const HotelsState.getHotelsLoading());
    await getHotels();
    await getFacilities();
    emit(const HotelsState.getHotels());
  }

  Future<void> getFacilities() async {
    if (!facilitiesStorage.hasData()) {
      FacilitiesParamsModel params = FacilitiesParamsModel(
        fields: 'all',
        from: '1',
        to: '573',
      );
      final response = await getFacilitiesUseCase.call(params);
      response.fold(
        (failure) => emit(HotelsState.getFacilitiesError(failure.getMessage())),
        (facilitiesResponseModel) =>
            facilities = facilitiesResponseModel.facilities!,
      );
    } else {
      facilities =
          facilitiesStorage.getData(id: HiveKeys.facilities)!.facilities!;
    }
  }

  Future<void> getHotels() async {
    if (!hotelsStorage.hasData()) {
      HotelsParamsModel hotelsParamsModel = const HotelsParamsModel(
        from: 1,
        to: 50,
        countryCode: 'EG',
        language: 'ENG',
      );
      final response = await getHotelsUseCase.call(hotelsParamsModel);
      response.fold(
        (failure) => emit(HotelsState.getHotelsError(failure.getMessage())),
        (hotelsResponseModel) {
          hotels = hotelsResponseModel.hotels!;
        },
      );
    } else {
      hotels = hotelsStorage.getData(id: HiveKeys.allHotelsData)!.hotels!;
    }
  }
}
