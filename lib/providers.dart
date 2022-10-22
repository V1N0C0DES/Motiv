import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:motiv/services/firestore_service.dart';

// This is a provider that will provide the FirebaseAuth object where it contains current user and other methods for authentication
final firebaseAuthProvider =
    Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final authStateChangesProvider = StreamProvider<User?>((ref) {
  return ref.watch(firebaseAuthProvider).authStateChanges();
});

//The firestoreProvider is a provider that will provide the Firestore object where it contains methods for interacting with the firestore database/cloud firestore
final databaseProvider = Provider<FirestoreService?>((ref) {
  final auth = ref.watch(authStateChangesProvider);
  String? uid = auth.asData?.value?.uid;
  if (uid != null) {
    return FirestoreService(uid: uid);
  }
  return null;
});

// nameProvider used in registration to get the name of the user
final nameProvider = ChangeNotifierProvider<NameText>((ref) => NameText());

class NameText extends ChangeNotifier {
  String name = "";
  void setName(String newName) {
    name = newName;
    notifyListeners();
  }
}
