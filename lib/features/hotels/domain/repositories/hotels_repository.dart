import 'package:travelhub/core/errors/failures.dart';
import 'package:travelhub/features/hotels/data/models/facilities_params_model/facilities_body_model/facilities_params_model.dart';
import 'package:travelhub/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:travelhub/features/hotels/data/models/hotels_params_model/hotels_params_model.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class HotelsRepository {
  Future<Either<Failure, HotelsResponseModel>> getHotels({
    required HotelsParamsModel hotelsParamsModel,
  });

  Future<Either<Failure, FacilitiesResponseModel>> getFacilities({
    required FacilitiesParamsModel facilitiesParamsModel,
  });
}
