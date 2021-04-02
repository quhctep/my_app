import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_app/domain/state/home/home_state.dart';
import 'package:my_app/internal/dependencies/home_module.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  HomeState _homeState;

  @override
  void initState() {
    super.initState();
    _homeState = HomeModule.homeState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _getLoginInput(),
            SizedBox(width: 20),
            _getPasswordInput(),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Получить'),
              onPressed: _getInfo,
            ),
            SizedBox(height: 20),
            _getInfoResult(),
          ],
        ),
      ),
    );
  }

  Widget _getLoginInput() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _loginController,
            autofocus: false,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(hintText: 'Телефон'),
          ),
        ),
      ],
    );
  }

  Widget _getPasswordInput() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _passwordController,
            autofocus: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Пароль'),
          ),
        ),
      ],
    );
  }

  Widget _getInfoResult() {
    return Observer(
      builder: (_) {
        if (_homeState.isLoading)
          return Center(
            child: CircularProgressIndicator(),
          );
        if (_homeState.info == null) return Container();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Наименование: ${_homeState.info.infoName}'),
            Text('Текст: ${_homeState.info.infoText}'),
            Text('Номер: ${_homeState.info.infoNumber}'),
          ],
        );
      },
    );
  }

  void _getInfo() {
    // здесь получаем данные
    final login = _loginController.text;
    final password = _passwordController.text;
    _homeState.getInfo(login: login, password: password);
  }
}
