import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/preferences_data_source.dart';
import 'package:flutter_template/data/sql/example_sql.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final exampleDatabaseProvider = Provider<ExamplesDatabase>((ref) => ExamplesDatabase());

final preferencesProvider = Provider<PreferencesDataSource>((ref) => PreferencesDataSource());

final googleMapProvider = Provider<Completer>((ref) => Completer());

final tokenProvider = StateProvider<String>((ref) => '');
