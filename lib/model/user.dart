import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

import '../constant.dart';

class Register{
  final String docId;
  final String userId;
  final String name;
  final Timestamp regdate;

  Register({required this.docId, required this.userId, required this.name, required this.regdate});

  Register.fromSnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : name = snapshot.data()[userNameFieldName],
        userId = snapshot.data()[userIdFieldName],
        regdate = snapshot.data()[userRegDateFieldName] as Timestamp,
        docId = snapshot.id;
  Register.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> snapshot)
      : name = snapshot.data()![userNameFieldName],
        userId = snapshot.data()![userIdFieldName],
        regdate = snapshot.data()![userRegDateFieldName] as Timestamp,
        docId = snapshot.id;
}

class CloudRegister{
  static final CloudRegister _singleton = CloudRegister._internal();

  factory CloudRegister() {
    return _singleton;
  }

  CloudRegister._internal();
  
  final registerCollection =
         FirebaseFirestore.instance.collection(registerCollectionName);
  
  Future<Register> createRegister({required name}) async {
    final docRef = await registerCollection.add({
      userNameFieldName: name,
      userIdFieldName: const Uuid().v4(),
      userRegDateFieldName: FieldValue.serverTimestamp(),
    });
    final fetchedRegister = await docRef.get();
    return Register.fromDocumentSnapshot(fetchedRegister);
  }

}