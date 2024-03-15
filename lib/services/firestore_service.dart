import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService{
  final CollectionReference userCollection = FirebaseFirestore.instance.collection("Users");

}