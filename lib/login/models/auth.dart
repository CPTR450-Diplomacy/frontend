import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';

class Auth {
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? user;

  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    final GoogleSignInAuthentication? googleSignInAuthentication =
        await googleSignInAccount?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication!.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential userCredential =
        await _auth.signInWithCredential(credential);

    user = userCredential.user;

    if (user != null) {
      user = _auth.currentUser;
    }

    return user;
  }

  Future<void> verifyWithServer() async {
    print(await user!.getIdToken());
    var url = Uri.parse('http://localhost:7777/login/');
    var response = await post(url, body: {'token': await user!.getIdToken()});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    // final url = 'http://localhost:7777/login/';
    // final body = {"sessionToken": await user!.getIdToken()};

    // var request = http.Request('POST', Uri.parse(url));
    // request.body = jsonEncode(body);

    // http.StreamedResponse response;
    // try {
    //   response = await request.send();
    // } catch (e) {
    //   throw StateError(e.toString());
    // }

    // print(response.statusCode);
    // print(await response.stream.bytesToString());
  }
}
