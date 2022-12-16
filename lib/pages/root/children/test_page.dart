import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/providers/domain_providers.dart';
import 'package:location/location.dart';
import '';
import '../../../providers/location_provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TestPage extends ConsumerWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final _controller = ref.watch(googleMapProvider);
    final location = ref.watch(locationStreamProvider);
    return location.when(
      data: (loc) {
        final CameraPosition _kGooglePlex = CameraPosition(
          target: LatLng(loc.latitude!.toDouble(), loc.longitude!.toDouble()),
          zoom: 10,
        );
        return GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          //markers: _markers,
          //polylines: _lines,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        );
      }, error: (error, stackTrace) {
      return Text(
        'error!!',
      );
    },
      loading: () {
        return Column(
          children: [
            Text(
              'loading...',
            ),
          ],
        );
      },
    );
  }
}
