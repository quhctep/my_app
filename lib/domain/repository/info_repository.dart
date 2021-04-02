import 'package:meta/meta.dart';
import 'package:my_app/domain/model/info.dart';

abstract class InfoRepository {
  Future<Info> getInfo({
    @required String login,
    @required String password,
  });
}
