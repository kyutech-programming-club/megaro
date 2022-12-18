import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/components/float_button.dart';
import 'package:flutter_template/constants/color_constant.dart';
import 'package:flutter_template/providers/domain_providers.dart';
import 'package:flutter_template/providers/infrastructure_providers.dart';
import 'package:flutter_template/providers/presentation_providers.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = ref.watch(googleMapProvider);
    final location = ref.watch(locationProvider);

    final battery = ref.watch(batteryProvider);
    final mapIcon = ref.watch(mapIconProvider);
    final isRental = ref.watch(isRentalProvider);
    final nearLoc = ref.watch(nearLocationsStreamProvider);
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
                return location.when(
                  data: (data) {
                    return nearLoc.when(
                      data: (locs) {
                        print("length: ${locs.length}");
                        for (var i = 0; i < locs.length; i++) {
                          final loc = locs[i];
                          markers.add(Marker(
                            //add start location marker
                            markerId: MarkerId(loc.name),
                            position: LatLng(loc.lat, loc.long),
                            //position of marker
                            infoWindow: InfoWindow(
                            //popup info
                            title: 'ユーザー名',
                            snippet: '残り12%',
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return AlertDialog(
                                      title: Text('ユーザー名'),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () => context.push('/message_page/talk_page/:', extra: loc.name
                                          ),
                                          child: Icon(Icons.chat_bubble),
                                        ),
                                      ],
                                    );
                                  });
                            }),
                            icon: BitmapDescriptor.fromBytes(
                                mapIcon!), //Icon for Marker
                          ));
                        }
                        final CameraPosition _kGooglePlex = CameraPosition(
                          target: LatLng(data.latitude!, data.longitude!),
                          zoom: 15,
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
                left: 24,
                top: 24,
                child: Container(
                  height: 88,
                  width: 240,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.black40,
                        spreadRadius: 0.4,
                        blurRadius: 4.0,
                      )
                    ],
                    color: ColorConstant.green100,
                    borderRadius: BorderRadius.circular(8),
                  ),
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
                                    fontSize: 40,
                                  ),
                                ),
                                Text(
                                  '共有できるまで${data - 5}%',
                                  style: TextStyle(
                                    fontSize: 16,
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
              ),
              Positioned(
                  bottom: 24,
                  left: 24,
                  child: isRental
                      ? Container(
                          width: 160,
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: ColorConstant.black40,
                                spreadRadius: 0.4,
                                blurRadius: 4.0,
                              )
                            ],
                            color: ColorConstant.green100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.radio_button_checked),
                              Text(
                                '貸し出し中',
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        )
                      : SizedBox.shrink()),
            ],
          ),
        ),
      ),
    );
  }
}
