import 'package:weatherly/data/database/tables/locations_table.dart';

List<String> initialScripts() {
  return [
    createLocationsTable(),
  ];
}
