import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const NAME = 'name';
  static const EMAIL = "email";
  static const ID = 'id';

  String _name;
  String _email;
  String _id;

  String get name => _name;

  String get email => _email;

  String get id => _id;

  UserModel.fromSnapshot(DocumentSnapshot snap) {
    _email = snap.data[EMAIL];
    _name = snap.data[NAME];
    _id = snap.data[ID];
  }
}
