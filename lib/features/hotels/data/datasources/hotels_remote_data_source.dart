import 'package:travelhub/core/apis/booking/booking_api.dart';
import 'package:travelhub/core/utils/app_functions.dart';
import 'package:travelhub/features/hotels/data/models/facilities_params_model/facilities_body_model/facilities_params_model.dart';
import 'package:travelhub/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:travelhub/features/hotels/data/models/hotels_params_model/hotels_params_model.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';

abstract class HotelsRemoteDataSource {
  Future<HotelsResponseModel> getHotels(
      {required HotelsParamsModel hotelsParamsModel});

  Future<FacilitiesResponseModel> getFacilities(
      {required FacilitiesParamsModel facilitiesParamsModel});
}

class HotelsRemoteDataSourceImpl implements HotelsRemoteDataSource {
  final BookingApi bookingApi;

  HotelsRemoteDataSourceImpl({required this.bookingApi});
  @override
  Future<HotelsResponseModel> getHotels({
    required HotelsParamsModel hotelsParamsModel,
  }) {
    return bookingApi.getAllHotels(
      hotelsParamsModel: hotelsParamsModel.toJson(),
      signature: AppFunctions.generateSHA256(),
    );
  }

  @override
  Future<FacilitiesResponseModel> getFacilities(
      {required FacilitiesParamsModel facilitiesParamsModel}) {
    return bookingApi.getAllFacilities(
      facilitiesParamsModel: facilitiesParamsModel.toJson(),
      signature: AppFunctions.generateSHA256(),
    );
  }
}
