import 'package:my_app/data/repository/info_data_repository.dart';
import 'package:my_app/domain/repository/info_repository.dart';

import 'api_module.dart';

class RepositoryModule {
  static InfoRepository _infoRepository;

  static InfoRepository infoRepository() {
    if (_infoRepository == null) {
      _infoRepository = InfoDataRepository(
        ApiModule.apiUtil(),
      );
    }
    return _infoRepository;
  }
}
