import 'package:news_24/core/constants/firebase_strings.dart';

class UserDataModel {
  final String userName;
  final String email;
  final String id;

  UserDataModel({
    required this.id,
    required this.userName,
    required this.email,
  });
  factory UserDataModel.fromJson(Map<String, dynamic> jsonData) {
    return UserDataModel(
      userName: jsonData[FirebaseStrings.userName] as String,

      email: jsonData[FirebaseStrings.email] as String,
      id: jsonData[FirebaseStrings.userId] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      FirebaseStrings.email: email,
      FirebaseStrings.userName: userName,
      FirebaseStrings.userId: id,
    };
  }
}
