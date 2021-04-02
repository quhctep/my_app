import 'package:my_app/data/api/api_util.dart';
import 'package:my_app/domain/model/info.dart';
import 'package:my_app/domain/repository/info_repository.dart';

class InfoDataRepository extends InfoRepository {
  final ApiUtil _apiUtil;

  InfoDataRepository(this._apiUtil);

  @override
  Future<Info> getInfo({String login, String password}) {
    return _apiUtil.getInfo(login: login, password: password);
  }
}
