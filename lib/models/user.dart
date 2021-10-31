class User {
  String? _name;
  String? _username;
  String? _password;
  String? _email;
  String? _phone;
  String? _flaglogged;



  User(this._name, this._username, this._password,this._email,this._phone, this._flaglogged);

  User.map(dynamic obj) {
    _name = obj['name'];
    _username = obj['username'];
    _password = obj['password'];
    _email = obj['email'];
    _phone = obj['phone'];
    _flaglogged = obj['password'];
  }

  String get name => _name!;
  String get username => _username!;
  String get password => _password!;
  String get email => _email!;
  String get phone => _phone!;
  String get flaglogged => _flaglogged!;

  Map<String, dynamic> toMap() {
    var map =  Map<String, dynamic>();
    map["name"] = _name;
    map["username"] = _username;
    map["password"] = _password;
    map["email"] = _email;
    map["phone"] = _phone;
    map["flaglogged"] = _flaglogged;
    return map;
  }
}
