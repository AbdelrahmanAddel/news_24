import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:news_24/core/constants/firebase_strings.dart';
import 'package:news_24/feature/sign_up/data/model/user_data_model.dart';
import 'package:uuid/uuid.dart';

abstract class SaveUserData {
  saveUserData({required String userName, required String email});
}

class SaveUserDataImplementation extends SaveUserData {
  @override
  saveUserData({required String userName, required String email}) async {
    UserDataModel userDataModel = UserDataModel(
      userName: userName,
      email: email,
      id: Uuid().v4(),
    );

    try {
      await FirebaseFirestore.instance
          .collection(FirebaseStrings.userCollection)
          .doc(userDataModel.id)
          .set(userDataModel.toJson());
    } on FirebaseException catch (e) {
      debugPrint(e.message ?? "un Excepted Error");
    } catch (e) {
      debugPrint("un Excepted Error => ${e.toString()}");
    }
  }
}
