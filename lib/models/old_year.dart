class Old {
  String? _fistNameOldYear;
  String? _usernameOldYear;
  String? _passwordOldYear;
  String? _emailOldYear;
  String? _phoneOldYear;
  String? _secondNameOldYear;



  Old(this._fistNameOldYear, this._usernameOldYear, this._passwordOldYear,this._emailOldYear,this._phoneOldYear, this._secondNameOldYear);

  Old.map(dynamic obj) {
    _fistNameOldYear = obj['firstNameOld'];
    _usernameOldYear = obj['usernameOld'];
    _passwordOldYear = obj['passwordOld'];
    _emailOldYear = obj['emailOld'];
    _phoneOldYear = obj['phoneOld'];
    _secondNameOldYear = obj['secondNameOld'];
  }

  String get firstNameOld => _fistNameOldYear!;
  String get usernameOld => _usernameOldYear!;
  String get passwordOld => _passwordOldYear!;
  String get emailOld => _emailOldYear!;
  String get phoneOld => _phoneOldYear!;
  String get secondNameOld => _secondNameOldYear!;

  Map<String, dynamic> toMap() {
    var map =  Map<String, dynamic>();
    map["firstNameOld"] = _fistNameOldYear;
    map["usernameOld"] = _usernameOldYear;
    map["passwordOld"] = _passwordOldYear;
    map["emailOld"] = _emailOldYear;
    map["phoneOld"] = _phoneOldYear;
    map["secondNameOld"] = _secondNameOldYear;
    return map;
  }
}
