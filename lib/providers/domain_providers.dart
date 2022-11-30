import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/data/preferences_data_source.dart';
import 'package:flutter_template/data/sql/example_sql.dart';

final exampleDatabaseProvider = Provider<ExamplesDatabase>((ref) => ExamplesDatabase());

final preferencesProvider = Provider<PreferencesDataSource>((ref) => PreferencesDataSource());

final tokenProvider = StateProvider<String>((ref) => '');
