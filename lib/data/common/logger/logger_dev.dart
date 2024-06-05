import 'package:loggy/loggy.dart';

import 'package:weatherly/data/common/logger/base_logger.dart';
import 'package:weatherly/data/common/logger/developer_log_printer.dart';
import 'package:weatherly/data/common/logger/logger_types.dart';

/// Logger implementation in dev environment
/// to disable logs in concrete layer, comment it in [WhitelistFilter]
class LoggerDev implements BaseLogger {
  @override
  final analytic = AnalyticLoggy().loggy;

  @override
  final data = DataLoggy().loggy;

  @override
  final domain = DomainLoggy().loggy;

  @override
  final p = PresentationLoggy().loggy;

  LoggerDev() {
    Loggy.initLoggy(
      logPrinter: const DeveloperLogPrinter(),
      logOptions: const LogOptions(LogLevel.all),
      filters: [
        const WhitelistFilter(
          [
            AnalyticLoggy,
            DataLoggy,
            DomainLoggy,
            PresentationLoggy,
          ],
        ),
      ],
    );
  }
}
