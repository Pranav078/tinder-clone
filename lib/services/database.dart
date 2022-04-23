import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  //get the uid to create doc for particular user (to connect collection with user)
  final String uid;
  DatabaseService(this.uid);

  //collection refrences
  final CollectionReference usersCollection =
  FirebaseFirestore.instance.collection('users');
  final CollectionReference chatroomsListCollection =
  FirebaseFirestore.instance.collection('chatroomsList');

  Future updateUsersData(String userName, String emailId) async {
    return await usersCollection.doc(uid).set({
      'name': userName,
      'emailId': emailId,
    });
  }



}