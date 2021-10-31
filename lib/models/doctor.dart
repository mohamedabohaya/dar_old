class Doctor {
  String? _nameDoctor;
  String? _usernameDoctor;
  String? _passwordDoctor;
  String? _emailDoctor;
  String? _phoneDoctor;
  String? _majorDoctor;



  Doctor(this._nameDoctor, this._usernameDoctor, this._passwordDoctor,this._emailDoctor,this._phoneDoctor, this._majorDoctor);

  Doctor.map(dynamic obj) {
    _nameDoctor = obj['nameDoctor'];
    _usernameDoctor = obj['usernameDoctor'];
    _passwordDoctor = obj['passwordDoctor'];
    _emailDoctor = obj['emailDoctor'];
    _phoneDoctor = obj['phoneDoctor'];
    _majorDoctor = obj['majorDoctor'];
  }

  String get nameDoctor => _nameDoctor!;
  String get username => _usernameDoctor!;
  String get passwordDoctor => _passwordDoctor!;
  String get emailDoctor => _emailDoctor!;
  String get phoneDoctor => _phoneDoctor!;
  String get majorDoctor => _majorDoctor!;

  Map<String, dynamic> toMap() {
    var map =  Map<String, dynamic>();
    map["nameDoctor"] = _nameDoctor;
    map["usernameDoctor"] = _usernameDoctor;
    map["passwordDoctor"] = _passwordDoctor;
    map["emailDoctor"] = _emailDoctor;
    map["phoneDoctor"] = _phoneDoctor;
    map["majorDoctor"] = _majorDoctor;
    return map;
  }
}
