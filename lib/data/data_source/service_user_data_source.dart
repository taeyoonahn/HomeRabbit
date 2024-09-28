import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:home_rabbit/domain/model/service_user.dart';

class ServiceUserDataSource {
  final db = FirebaseFirestore.instance;

  Future<List<String>> getServiceUserIds() async {
    List<String> userIds = [];
    QuerySnapshot querySnapshot = await db.collection('users').get();
    for (var documentSnapshot in querySnapshot.docs) {
      userIds.add(documentSnapshot.id);
    }
    return userIds;
  }

  Future<void> addServiceUser(User user) async {
    String defaultId = user.uid;
    bool defaultIsSubscribed = false;
    String defaultName = user.displayName ?? user.uid;
    ServiceUser serviceUser = ServiceUser(id: 'defaultId', isSubscribed: defaultIsSubscribed, name: 'defaultName');
    final usersRef = db.collection('users').doc(user.uid).withConverter<ServiceUser>(
      fromFirestore: (snapshot, _) => ServiceUser.fromJson(snapshot.data()!),
      toFirestore: (user, _) => user.toJson(),
    );
    await usersRef.set(serviceUser);

  }

  Future<void> deleteServiceUser(String uid) async{
    return db
        .collection('users')
        .doc(uid)
        .delete();
  }

  Future<bool> getServiceUserIsSubscribed(String uid) async {
    DocumentSnapshot documentSnapshot = await db.collection('users').doc(uid).get();
    bool userIsSubscribed = documentSnapshot.get('isSubscribed') as bool;
    return userIsSubscribed;
  }
}