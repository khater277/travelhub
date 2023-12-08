import 'package:dio/dio.dart';
import 'package:travelhub/core/apis/booking/booking_end_points.dart';
import 'package:travelhub/features/available_rooms/data/models/check_rate/response/check_rate_response.dart';
import 'package:travelhub/features/available_rooms/data/models/create_booking/response/create_booking_response.dart';
import 'package:travelhub/features/create_booking/data/models/response/check_availability_response.dart';
import 'package:travelhub/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'booking_api.g.dart';

@RestApi(baseUrl: BookingEndPoints.baseUrl)
abstract class BookingApi {
  factory BookingApi(Dio dio, {String baseUrl}) = _BookingApi;

  @GET(BookingEndPoints.hotelContent + BookingEndPoints.hotels)
  Future<HotelsResponseModel> getAllHotels({
    @Header('X-Signature') required String signature,
    @Queries() required Map<String, dynamic> hotelsParamsModel,
  });

  @GET(BookingEndPoints.hotelContent + BookingEndPoints.allFacilities)
  Future<FacilitiesResponseModel> getAllFacilities({
    @Header('X-Signature') required String signature,
    @Queries() required Map<String, dynamic> facilitiesParamsModel,
  });

  @POST(BookingEndPoints.booking + BookingEndPoints.checkAvailability)
  Future<CheckAvailabilityResponse> checkAvailability({
    @Header('X-Signature') required String signature,
    @Body() required Map<String, dynamic> checkAvailabilityBody,
  });

  @POST(BookingEndPoints.booking + BookingEndPoints.checkRates)
  Future<CheckRateResponse> checkRate({
    @Header('X-Signature') required String signature,
    @Body() required Map<String, dynamic> checkRateBody,
  });

  @POST(BookingEndPoints.booking + BookingEndPoints.createBooking)
  Future<CreateBookingResponse> createBooking({
    @Header('X-Signature') required String signature,
    @Body() required Map<String, dynamic> createBookingBody,
  });
}
