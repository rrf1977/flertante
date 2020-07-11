class PersonMap{

  //Attributes
  double _uin;
  String _firstName;
  String _secondName;
  String _middleName;
  String _familyName;
  double _birthdate;
  int _gender;
  String _occupation;
  double _height;
  double _weight;

  //Constructor
  PersonMap(this._uin, this._firstName, this._secondName, this._middleName, this._familyName, this._birthdate, this._gender);

  //Getters
  double get uin => _uin;
  String get firstName => _firstName;
  String get secondName => _secondName;
  String get middleName => _middleName;
  String get familyName => _familyName;
  double get birthdate => _birthdate;
  int get gender => _gender;
  String get occupation => _occupation;
  double get height => _height;
  double get weight => _weight;

  PersonMap.map (dynamic obj){
    this._uin = obj["uin"];
    this._firstName = obj["firstName"];
    this._secondName = obj["secondName"];
    this._middleName = obj["middleName"];
    this._familyName = obj["familyName"];
    this._birthdate = obj["birthdate"];
    this._gender = obj["gender"];
    this._occupation = obj["occupation"];
    this._height = obj["height"];
    this._weight = obj["weight"];
  }

  //Converting data to a map
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic> ();
    if (_uin != null) {
      map["uin"] = _uin;
    }
    map["firstName"];
    map["secondName"];
    map["middleName"];
    map["familyName"];
    map["birthdate"];
    map["gender"];
    map["occupation"];
    map["height"];
    map["weight"];
    return map;
  }

  //convert a map to a data model
  PersonMap.fromMap(Map<String, dynamic> map, String uin){
    //Assign uin to this._uin, only if uin is not null
    //else, assign "" (empty).
    this._uin = _uin ?? "";
    this._firstName = map["firstName"];
    this._secondName = map["secondName"];
    this._middleName = map["middleName"];
    this._familyName = map["familyName"];
    this._birthdate = map["birthdate"];
    this._gender = map["gender"];
    this._occupation = map["occupation"];
    this._height = map["height"];
    this._weight = map["weight"];
  }
}



