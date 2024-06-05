import 'package:weatherly/data/database/database_constants.dart';

String createLocationsTable() {
  return '''
    CREATE TABLE ${DatabaseConstants.locations} (
      ${DatabaseConstants.id} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${DatabaseConstants.name} TEXT NOT NULL,
      ${DatabaseConstants.coordinate} TEXT NOT NULL
    )
  ''';
}
