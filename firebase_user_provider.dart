/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DiaFriendFirebaseUser {
  DiaFriendFirebaseUser(this.user);
  User user;
  // ignore: unnecessary_null_comparison
  bool get loggedIn => user != null;
}
 
DiaFriendFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DiaFriendFirebaseUser> diaFriendFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<DiaFriendFirebaseUser>(
        (user) => currentUser = DiaFriendFirebaseUser(user!));
*/