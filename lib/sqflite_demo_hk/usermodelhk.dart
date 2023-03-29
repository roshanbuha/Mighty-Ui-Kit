class UserModelHk{
  String? name;
  String? fatherName;
  String? email;
  String? password;
  int? mobileNumber;
  int? adharNumber;
  String? colonyName;
  String? cityName;
  int? pinCode;
  String? date;
  String? gender;
  int? id;





  UserModelHk({this.name, this.email,this.fatherName, this.id,this.password,this.mobileNumber,this.adharNumber,this.cityName,this.colonyName,this.date,this.pinCode,this.gender});




  UserModelHk.fromJson(dynamic json) {
    name = json['name'];
     email = json['email'];
    id = json['id'];
    fatherName = json['fatherName'];
    password = json['password'];
    mobileNumber = json['mobileNumber'];
    adharNumber = json['adharNumber'];
    colonyName = json['colonyName'];
    cityName = json['cityName'];
    pinCode = json['pinCode'];
    date = json['date'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['fatherName'] = fatherName;

    map['password'] = password;
    map['mobileNumber'] = mobileNumber;
    map['adharNumber'] = adharNumber;
    map['colonyName'] = colonyName;

    map['cityName'] = cityName;
    map['pinCode'] = pinCode;
    map['date'] = date;

    map['gender'] = gender;


    return map;
  }
}