/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';import 'auth_util.dart';

final _googleSignIn = GoogleSignIn();


class GoogleWidget extends StatefulWidget {
   GoogleWidget({Key? key}) : super(key: key);
 // ignore: unused_field
 final _googleSignIn = GoogleSignIn();
  @override
  _GoogleWidget createState() => _GoogleWidget();
}



class _GoogleWidget extends State<AuthWidget> {
  get scaffoldKey => null;
  
  set signInFunc(Future<User?> Function() signInFunc) {}//idk to get rid of the error


  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      key: scaffoldKey,
        body: ListView(
          children: [

        Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              hintText: 'usernanme@domain.com'
            ),
          ),
        ),


          //PASSWORD
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: '**********'
            ),
          ),
        ),

          ]//Children
        )
    );
  }//build



  Future<Future<User?>> signInWithGoogle(BuildContext context, BuildContext passwordController) async {
    signInFunc() async {
      if (kIsWeb) {
        var secureStorage;//IDK 
        var user;//IDk
        secureStorage.writeSecureData('email',user.email);//HOCK
        secureStorage.writeSecureData('name', user.displayName);//HOCK
        GoogleAuthProvider googleProvider = GoogleAuthProvider();
        googleProvider
            .addScope('https://www.googleapis.com/auth/contacts.readonly');
        // Once signed in, return the UserCredential
        return await FirebaseAuth.instance.signInWithPopup(googleProvider);
      }

      await signOutWithGoogle().catchError((_) => null);
      final auth = await (await _googleSignIn.signIn())?.authentication;
      if (auth == null) {
        return null;
      }
      final credential = GoogleAuthProvider.credential(
          idToken: auth.idToken, accessToken: auth.accessToken);
      return FirebaseAuth.instance.signInWithCredential(credential);
    }
    return signInOrCreateAccount(context, (signInFunc));
  }

  Future signOutWithGoogle() => _googleSignIn.signOut();
    Widget building(BuildContext context) {
      //TODO: implement build
    throw UnimplementedError();
  }
}
*/