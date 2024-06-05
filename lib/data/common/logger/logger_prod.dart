import 'package:loggy/loggy.dart';
import 'package:weatherly/data/common/logger/base_logger.dart';
import 'package:weatherly/data/common/logger/logger_types.dart';

/// Logger implementation in prod environment
/// [WhitelistFilter] in initLoggy is empty, it means no logs will be printed
class LoggerProd implements BaseLogger {
  @override
  final analytic = AnalyticLoggy().loggy;

  @override
  final data = DataLoggy().loggy;

  @override
  final domain = DomainLoggy().loggy;

  @override
  final p = PresentationLoggy().loggy;

  LoggerProd() {
    Loggy.initLoggy(
      filters: [
        const WhitelistFilter([]),
      ],
    );
  }
}
