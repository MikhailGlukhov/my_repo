import 'package:flutter_application_themovie/domain/session_providers/session_data_provider.dart';

class MyAppModel {
  final _sessioDataProvider = SessionDataProvider();
  var _isAuth = false;
  bool get isAuth => _isAuth;
  Future<void> checAuth() async{
    final sessionId = await _sessioDataProvider.getSessionId();
    _isAuth = sessionId != null;
  }
}