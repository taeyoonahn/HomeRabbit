import 'package:cloud_firestore/cloud_firestore.dart';

class SystemInfoDataSource {
  final db = FirebaseFirestore.instance;

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