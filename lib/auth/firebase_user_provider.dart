import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UlllAct8FirebaseFirebaseUser {
  UlllAct8FirebaseFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

UlllAct8FirebaseFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UlllAct8FirebaseFirebaseUser> ulllAct8FirebaseFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<UlllAct8FirebaseFirebaseUser>(
            (user) => currentUser = UlllAct8FirebaseFirebaseUser(user));
