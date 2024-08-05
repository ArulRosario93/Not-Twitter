import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_auth/firebase_auth.dart";

class AuthMethods {
  Future<bool> createUserInFirestore(
      String name, String email, String uid, String number) async {
    bool res = false;

    try {
      await FirebaseFirestore.instance.collection("users").doc(uid).set({
        "name": name,
        "email": email,
        "number": number,
        "uid": uid,
        "dateJoined": DateTime.now(),
        "profilePhoto": "",
      });
      res = true;
    } catch (e) {
      res = false;
    }

    return res;
  }

  Future<String> signUpWithEmailAndPassword(
      String email, String password, String name, String number) async {

    String res = "Error founf";

    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        if (await createUserInFirestore(name, email, value.user!.uid, number)) {
          res = "Success";
        } else {
          res = "Error";
        }
      });
    } catch (e) {
      res = e.toString();
    }

    return res;
  }

  Future<String> signInWithEmailAndPassword(String email, String password) async {
    String res = "Error found";

    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        res = "Success";
      });
    } catch (e) {
      res = e.toString();
    }

    return res;
  }
}
