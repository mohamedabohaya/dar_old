import 'package:care/data/rest_data.dart';
import 'package:care/models/user.dart';
import 'package:flutter/cupertino.dart';

abstract class LoginPageContract{
  void onLoginSuccess(User user);
  void onLoginError(String error);
}

class LoginPagePresenter {
  final LoginPageContract _view;
  RestData api =  RestData();
  LoginPagePresenter(this._view);

//Simulator login
  doLogin(String username, String password){
    api
    .login(username, password)
    .then((user) => _view.onLoginSuccess(user))
    .catchError((onError) => _view.onLoginError(onError));
  }
}