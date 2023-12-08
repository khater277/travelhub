// ignore_for_file: depend_on_referenced_packages

import 'package:travelhub/core/shared_widgets/text.dart';
import 'package:travelhub/features/hotels/data/models/hotels_response_model/facility.dart';
import 'package:flutter/material.dart';

class HotelFacilities extends StatelessWidget {
  final List<Facility> hotelFacilities;
  const HotelFacilities({super.key, required this.hotelFacilities});

  @override
  Widget build(BuildContext context) {
    return const LargeHeadText(text: ""
        //   cubit.getFacilityName(
        // hotelFacilities: hotelFacilities,
        // index: 8,
        // )
        );
    // return GridView.builder(
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    //     maxCrossAxisExtent: 200,
    //     mainAxisSpacing: 10,
    //     crossAxisSpacing: 8,
    //     childAspectRatio: 0.68,
    //   ),
    //   itemBuilder: (BuildContext context, int index) => LargeHeadText(
    //       text: cubit.getFacilityName(
    //     hotelFacilities: hotelFacilities,
    //     index: 8,
    //   )),
    // );
  }
}

// LargeHeadText(
//         text: cubit.getFacilityName(
//       hotelFacilities: hotelFacilities,
//       index: 8,
//     ))
