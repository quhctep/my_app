import 'package:meta/meta.dart';

class GetInfoBody {
  final String login;
  final String password;

  GetInfoBody({
    @required this.login,
    @required this.password,
  });

  Map<String, dynamic> toApi() {
    return {
      'login': login,
      'password': password,
    };
  }
}
