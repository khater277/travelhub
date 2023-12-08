






// class HiveHelper {
//   static Box<CurrentUser>? currentUser;
//   static Box<HotelsResponseModel>? allHotelsData;
//   static Box<Coordinates>? userLocation;
//   static Box<FacilitiesResponseModel>? facilities;
//   static Box<BookingDetailsModel>? myBookings;

//   static Future<void> init() async {
//     await Hive.initFlutter();

//     /// Adapters
//     Hive.registerAdapter(CurrentUserAdapter());
//     Hive.registerAdapter(HotelsResponseModelAdapter());
//     Hive.registerAdapter(AddressAdapter());
//     Hive.registerAdapter(CityAdapter());
//     Hive.registerAdapter(CoordinatesAdapter());
//     Hive.registerAdapter(DescriptionAdapter());
//     Hive.registerAdapter(FacilityAdapter());
//     Hive.registerAdapter(HotelAdapter());
//     Hive.registerAdapter(ImageAdapter());
//     Hive.registerAdapter(NameAdapter());
//     Hive.registerAdapter(PhoneAdapter());
//     Hive.registerAdapter(FacilitiesResponseModelAdapter());
//     Hive.registerAdapter(FacilityInfoAdapter());
//     Hive.registerAdapter(FacilityDescriptionAdapter());
//     Hive.registerAdapter(RoomFacilityAdapter());
//     Hive.registerAdapter(RoomStayFacilityAdapter());
//     Hive.registerAdapter(RoomStayAdapter());
//     Hive.registerAdapter(RoomAdapter());
//     Hive.registerAdapter(RoomsAdapter());
//     Hive.registerAdapter(BookingDetailsModelAdapter());

//     /// Open Boxes
//     currentUser = await Hive.openBox(HiveKeys.currentUser);
//     allHotelsData = await Hive.openBox(HiveKeys.allHotelsData);
//     userLocation = await Hive.openBox(HiveKeys.userLocation);
//     facilities = await Hive.openBox(HiveKeys.facilities);
//     myBookings = await Hive.openBox(HiveKeys.myBookings);
//   }

//   // USER
//   static Future<void> setCurrentUser({required CurrentUser user}) {
//     return currentUser!.put(HiveKeys.currentUser, user);
//   }

//   static CurrentUser? getCurrentUser() {
//     return currentUser!.get(HiveKeys.currentUser);
//   }

//   // ALL HOTELS
//   static Future<void> setAllHotels(
//       {required HotelsResponseModel hotelsResponseModel}) {
//     return allHotelsData!.put(HiveKeys.allHotelsData, hotelsResponseModel);
//   }

//   static HotelsResponseModel? getAllHotels() {
//     return allHotelsData!.get(HiveKeys.allHotelsData);
//   }

//   static List<Hotel>? getSomeHotels({
//     required int from,
//     required int to,
//   }) {
//     return getAllHotels()!.hotels!.sublist(from, to);
//   }

//   static List<Hotel> getHotels() {
//     return getAllHotels() != null ? (getAllHotels()!.hotels ?? []) : [];
//   }

//   static List<FacilityInfo> getFacilities() {
//     return getAllFacilities() != null
//         ? (getAllFacilities()!.facilities ?? [])
//         : [];
//   }

//   // USER LOCATION
//   static Future<void> setUserLocation({required Coordinates userCoordinates}) {
//     return userLocation!.put(HiveKeys.userLocation, userCoordinates);
//   }

//   static Coordinates? getUserLocation() {
//     return userLocation!.get(HiveKeys.userLocation);
//   }

//   // FACILITIES
//   static Future<void> setAllFacilities(
//       {required FacilitiesResponseModel facilitiesResponseModel}) {
//     return facilities!.put(HiveKeys.facilities, facilitiesResponseModel);
//   }

//   static FacilitiesResponseModel? getAllFacilities() {
//     return facilities!.get(HiveKeys.facilities);
//   }

//   //MY BOOKINGS
//   static Future<void> setMyBookings(
//       {required String bookingId, required BookingDetailsModel myBooking}) {
//     return myBookings!.put(bookingId, myBooking);
//   }

//   static List<BookingDetailsModel>? getMyBookings() {
//     if (myBookings!.values.isNotEmpty) {
//       List<BookingDetailsModel> list = [];
//       for (var element in myBookings!.values) {
//         list.add(myBookings!.get(element.bookingId)!);
//       }
//       return list;
//     } else {
//       return null;
//     }
//   }
// }
