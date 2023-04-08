import 'dart:convert';

class UserModel {
  String? name;
  String? email;
  String? uid;
  String? imageUrl;
  String? contact;
  String? building;
  String? serviceType;
  String? location;
  List<String>? fcmTokens;

  UserModel(
      {this.name,
      this.email,
      this.uid,
      this.contact,
      this.building,
      this.imageUrl,
      this.serviceType,
      this.location,
      this.fcmTokens});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'uid': uid,
      'contact': contact,
      'building': building,
      "imageUrl": imageUrl,
      "serviceType": serviceType,
      "location": location,
      "fcmTokens": fcmTokens
    };
  }

  factory UserModel.fromMapNormal(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      uid: map['uid'] != null ? map['uid'] as String : null,
      contact: map['contact'] != null ? map['contact'] as String : null,
      building: map['building'] != null ? map['building'] as String : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      location: map['location'] != null ? map['location'] as String : null,
      serviceType:
          map['serviceType'] != null ? map['serviceType'] as String : null,
      fcmTokens: map['fcmTokens'] != null
          ? List<String>.from((map['fcmTokens'] as List<dynamic>))
          : null,
    );
  }

  factory UserModel.fromMapUserCreation(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      uid: map['localId'] != null ? map['localId'] as String : null,
      contact: map['contact'] != null ? map['contact'] as String : null,
      building: map['building'] != null ? map['building'] as String : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      location: map['location'] != null ? map['location'] as String : null,
      serviceType:
          map['serviceType'] != null ? map['serviceType'] as String : null,
      fcmTokens: map['fcmTokens'] != null
          ? List<String>.from((map['fcmTokens'] as List<dynamic>))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJsonNormal(String source) =>
      UserModel.fromMapNormal(json.decode(source) as Map<String, dynamic>);
  factory UserModel.fromJsonUserCreation(String source) =>
      UserModel.fromMapUserCreation(
          json.decode(source) as Map<String, dynamic>);
}
