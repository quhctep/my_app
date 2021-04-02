import 'package:my_app/data/api/model/api_info.dart';
import 'package:my_app/domain/model/info.dart';

class InfoMapper {
  static Info fromApi(ApiInfo info) {
    return Info(
      infoName: info.infoName,
      infoText: info.infoText,
      infoNumber: info.infoNumber.toInt(),
    );
  }
}
