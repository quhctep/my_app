import 'package:dio/dio.dart';
import 'package:my_app/data/api/model/api_info.dart';
import 'package:my_app/data/api/request/get_info_body.dart';

class InfoService {
  static const _BASE_URL = 'https://api.info.org';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _BASE_URL),
  );

  Future<ApiInfo> getInfo(GetInfoBody body) async {
    final response = await _dio.get(
      '/json',
      queryParameters: body.toApi(),
    );
    return ApiInfo.fromApi(response.data);
  }
}
