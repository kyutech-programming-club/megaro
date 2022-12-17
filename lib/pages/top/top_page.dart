import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/entity/location/location_entity.dart';
import 'package:flutter_template/components/float_button.dart';
import 'package:flutter_template/providers/domain_providers.dart';
import 'package:flutter_template/providers/infrastructure_providers.dart';
import 'package:flutter_template/providers/presentation_providers.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:flutter_template/repositories/location_repository.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = ref.watch(googleMapProvider);
    final location = ref.watch(currentLocationStreamProvider);
    final battery = ref.watch(batteryProvider);
    final mapIcon = ref.watch(mapIconProvider);
    final isRental = ref.watch(isRentalProvider);
    final nearLoc = ref.watch(nearLocationsStreamProvider);
    final token = ref.watch(tokenProvider);
    final geo = ref.watch(geoProvider);
    Set<Marker> markers = Set();

    return Scaffold(
      floatingActionButton: MessageButton(),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Builder(builder: (context) {
                return nearLoc.when(
                  data: (locs) {
                    print("length: ${locs.length}");
                    for (var i = 0; i < locs.length; i++) {
                      final loc = locs[i];
                      markers.add(
                          Marker( //add start location marker
                            markerId: MarkerId(loc.name),
                            position: LatLng(loc.lat, loc.long),//position of marker
                            infoWindow: InfoWindow( //popup info
                              title: 'Starting Point ',
                              snippet: 'Start Marker',
                            ),
                            icon: BitmapDescriptor.fromBytes(mapIcon), //Icon for Marker
                          )
                      );
                    }
                    final CameraPosition _kGooglePlex = CameraPosition(
                      target: LatLng(35, 135),
                      zoom: 5,
                    );
                    return GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: _kGooglePlex,
                      myLocationEnabled: true,
                      myLocationButtonEnabled: true,
                      markers: markers,
                      //polylines: _lines,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                    );
                  },
                  error: (error, stackTrace) {
                    return Text(error.toString());
                  },
                  loading: () {
                    return Column(
                      children: [
                        Text('loading...'),
                      ],
                    );
                  },
                );
              }),
              Positioned(
                left: 8,
                child: Column(
                  children: [
                    Builder(builder: (context) {
                      return battery.when(
                        data: (data) {
                          return Column(
                            children: [
                              Text(
                                '${data.toString()}%',
                                style: TextStyle(
                                  fontSize: 56,
                                ),
                              ),
                              Text(
                                '共有できるまで${data - 5}%',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          );
                        },
                        error: (error, stackTrace) {
                          return Text(error.toString());
                        },
                        loading: () {
                          return Column(
                            children: [
                              Text('loading...'),
                            ],
                          );
                        },
                      );
                    }),
                  ],
                ),
              ),
              Positioned(
                right: 16,
                top: 16,
                child: SizedBox(
                  width: 64,
                  height: 64,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.person,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 24,
                left: 16,
                child: isRental ? Text(
                  '貸し出し中',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ) : SizedBox.shrink()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
