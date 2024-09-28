import 'package:cloud_firestore/cloud_firestore.dart';

class SystemInfoDataSource {
  final db = FirebaseFirestore.instance;

  Future<String> getInfoText(String id) async {
    DocumentSnapshot doc = await FirebaseFirestore.instance
        .collection('infoTexts')
        .doc(id)
        .get();

    if (doc.exists) {
      return doc['contents'];
    } else {
      return 'Document does not exist';
    }
  }

  Future<List<String>> getResultInfoTexts(String id) async {
    List<String> documentFields = [];
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
        .collection('infoResultTexts')
        .doc(id)
        .get();
    Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
    documentFields = data.values.map((value) => value.toString()).toList();
    return documentFields;
  }
}