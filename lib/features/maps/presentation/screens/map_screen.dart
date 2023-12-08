// import 'dart:async';

import 'package:travelhub/app/locator.dart';
import 'package:travelhub/core/shared_widgets/custom_info_window.dart';
import 'package:travelhub/core/utils/app_values.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/coordinates.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/hotel.dart';
import 'package:travelhub/features/maps/cubit/maps_cubit.dart';
import 'package:travelhub/features/maps/presentation/widgets/map_content/map_floating_search.dart';
import 'package:travelhub/features/maps/presentation/widgets/map_content/map_hotels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapsCubit, MapsState>(
      builder: (context, state) {
        final List<Hotel> hotels =
            locator<MapsCubit>().hotels!.hotels!.sublist(0, 10);
        return Scaffold(
          body: Stack(
            children: [
              GoogleMap(
                initialCameraPosition:
                    locator<MapsCubit>().currentCameraPosition,
                mapType: MapType.terrain,
                zoomControlsEnabled: true,
                // myLocationEnabled: true,
                myLocationButtonEnabled: false,
                markers: locator<MapsCubit>().markers,
                onMapCreated: (GoogleMapController googleMapController) {
                  locator<MapsCubit>()
                      .createMap(googleMapController: googleMapController);
                },
                onTap: (position) => locator<MapsCubit>().tapOnMap(),
                onCameraMove: (position) =>
                    locator<MapsCubit>().moveCameraOnMap(
                  coordinates: Coordinates(
                    latitude: double.parse(
                        position.target.latitude.toStringAsFixed(3)),
                    longitude: double.parse(
                        position.target.longitude.toStringAsFixed(3)),
                  ),
                  context: context,
                ),
                // on
              ),
              CustomInfoWindow(
                (top, left, width, height) => null,
                controller: locator<MapsCubit>().infoWindowController,
                height: AppHeight.h60,
                width: AppWidth.w200,
                offset: AppSize.s60,
              ),
              MapsHotels(hotels: hotels),
              const MapFloatingSearch(),
            ],
          ),
        );
      },
    );
  }
}
