import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final firebaseDBProvider = StateProvider<FirebaseFirestore>((ref) {
  return FirebaseFirestore.instance;
});
