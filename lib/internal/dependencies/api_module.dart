import 'package:my_app/data/api/api_util.dart';
import 'package:my_app/data/api/service/info_service.dart';

class ApiModule {
  static ApiUtil _apiUtil;

  static ApiUtil apiUtil() {
    if (_apiUtil == null) {
      _apiUtil = ApiUtil(InfoService());
    }
    return _apiUtil;
  }
}
