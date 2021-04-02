import 'package:mobx/mobx.dart';
import 'package:meta/meta.dart';
import 'package:my_app/domain/repository/info_repository.dart';
import 'package:my_app/domain/model/info.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  HomeStateBase(this._infoRepository);

  final InfoRepository _infoRepository;

  @observable
  Info info;

  @observable
  bool isLoading = false;

  @action
  Future<void> getInfo({
    @required String login,
    @required String password,
  }) async {
    isLoading = true;
    final data = await _infoRepository.getInfo(login: login, password: password);
    info = data;
    isLoading = false;
  }
}
