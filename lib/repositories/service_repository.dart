import 'package:cloud_firestore/cloud_firestore.dart';

class ServiceRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>>
  fetchServices() async {
    final snapshot = await _firestore.collection('music_services').get();

    final docs = snapshot.docs;

    return docs;
  }
}
