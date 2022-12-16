import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:location/location.dart';
import '';
import '../../../providers/location_provider.dart';

class TestPage extends ConsumerWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final location = ref.watch(locationStreamProvider);
    return location.when(
      data: (loc) {
        return Column(
          children: [
            Text(
              'lat: ${loc.latitude}',
            ),
            Text(
              'lon: ${loc.longitude}',
            ),
          ],
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
