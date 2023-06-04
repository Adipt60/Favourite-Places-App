import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

// class PlaceLocation {
//   const PlaceLocation({
//     required this.latitude,
//     required this.longitude,
//   });

//   final double latitude;
//   final double longitude;
// }

class Place {
  Place({
    required this.title,
    required this.image,
    String? id
   // required this.location,
  }) : id = id ?? uuid.v4();

  final String id;
  final String title;
  final File image;
  //final PlaceLocation location;
}
