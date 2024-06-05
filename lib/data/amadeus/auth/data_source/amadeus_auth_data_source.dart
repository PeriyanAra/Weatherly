import 'package:weatherly/data/amadeus/amadeus.dart';
import 'package:weatherly/domain/common/result/result.dart';

abstract class AmadeusAuthDataSource {
  Future<ResponseResult<AmadeusAuthDto, FailureResult>> getAccessToken();
}
