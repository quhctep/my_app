import 'package:my_app/data/api/request/get_info_body.dart';
import 'package:my_app/data/mapper/info_mapper.dart';
import 'package:meta/meta.dart';
import 'package:my_app/data/api/service/info_service.dart';
import 'package:my_app/domain/model/info.dart';

class ApiUtil {
  final InfoService _infoService;

  ApiUtil(this._infoService);

  Future<Info> getInfo({
    @required String login,
    @required String password,
  }) async {
    final body = GetInfoBody(login: login, password: password);
    final result = await _infoService.getInfo(body);
    return InfoMapper.fromApi(result);
  }
}
