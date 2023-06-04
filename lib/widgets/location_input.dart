// import 'package:favourite_places_app/models/place.dart';
// import 'package:flutter/material.dart';
// import 'package:location/location.dart';

// class LocationInput extends StatefulWidget {
//   const LocationInput({super.key});

//   @override
//   State<LocationInput> createState() => _LocationInputState();
// }

// class _LocationInputState extends State<LocationInput> {
//   PlaceLocation? _pickedlocation;
//   var _isGettingLocation = false;

//   void _getCurrentLocation() async {
//     setState(() {
//       _isGettingLocation = true;
//     });

//     final locationData = await getLocation();

//     if (locationData.latitude == null || locationData.longitude == null) {
//       return;
//     }

//     setState(() {
//       _pickedlocation = PlaceLocation(
//         latitude: locationData.latitude!,
//         longitude: locationData.longitude!,
//       );
//       _isGettingLocation = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget previewContent = Text(
//       'No Location chosen',
//       textAlign: TextAlign.center,
//       style: Theme.of(context).textTheme.bodyLarge!.copyWith(
//             color: Theme.of(context).colorScheme.onBackground,
//           ),
//     );

//     if (_isGettingLocation) {
//       previewContent = const CircularProgressIndicator();
//     }

//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.center,
//           height: 170,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             border: Border.all(
//               width: 1,
//               color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
//             ),
//           ),
//           child: previewContent,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             TextButton.icon(
//               onPressed: _getCurrentLocation,
//               icon: const Icon(Icons.location_on),
//               label: const Text('Get Current Location'),
//             ),
//             TextButton.icon(
//               onPressed: () {},
//               icon: const Icon(Icons.map),
//               label: const Text('Select on Map'),
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }
