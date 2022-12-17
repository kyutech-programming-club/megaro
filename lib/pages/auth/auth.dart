import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

class TestPage extends StatelessWidget {

  // Google 認証
  final _google_signin = GoogleSignIn(scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ]);
  late GoogleSignInAccount googleUser;
  late GoogleSignInAuthentication googleAuth;
  late AuthCredential credential;

  // Firebase 認証
  final _auth = FirebaseAuth.instance;
  late AuthCredential result;
  late FirebaseFirestore user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            ButtonTheme(
              minWidth: 350.0,
              // height: 100.0,
              child: ElevatedButton(
                  child: Text('Google認証',
                    style: TextStyle(fontWeight: FontWeight.bold),),

                  onPressed: () async {
                    // Google認証の部分
                    googleUser = (await _google_signin.signIn())!;
                    googleAuth = await googleUser.authentication;

                    credential = GoogleAuthProvider.credential(
                      accessToken: googleAuth.accessToken,
                      idToken: googleAuth.idToken,
                    );

                    // Google認証を通過した後、Firebase側にログイン　※emailが存在しなければ登録
                    try {
                      result = (await _auth.signInWithCredential(
                          credential)) as AuthCredential;
                      user = result.token as FirebaseFirestore;
                    } catch (e) {
                      print(e);
                    }
                    GoRouter.of(context).push('/top/:');
                  }
              ),
            ),

            ButtonTheme(
              minWidth: 350.0,
              // height: 100.0,
              child: ElevatedButton(
                  child: Text('Google認証ログアウト',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  onPressed: () {
                    _auth.signOut();
                    _google_signin.signOut();
                    print('サインアウトしました。');
                  }
              ),
            ),

            Text('別のGoogleアカウントでログインしたい場合、一回ログアウトする必要がある。'),

          ],
        ),
      ),
    );
  }
}