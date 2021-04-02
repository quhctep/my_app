import 'package:my_app/domain/state/home/home_state.dart';
import 'package:my_app/internal/dependencies/repository_module.dart';

class HomeModule {
  static HomeState homeState() {
    return HomeState(
      RepositoryModule.infoRepository(),
    );
  }
}
