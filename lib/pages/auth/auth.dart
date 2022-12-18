import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_template/constants/color_constant.dart';
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
            SizedBox(
              height: 96,
              width: 160,
              child: Image.network(
                  'https://sozaic.com/wp-content/uploads/2020/07/gadget20.jpg'),
            ),
            Text(
              'リア充',
              style: TextStyle(
                fontSize: 40,
                color: ColorConstant.green40,
              ),
            ),
            ButtonTheme(
              minWidth: 350.0,
              // height: 100.0,
              child: SizedBox(
                width: 240,
                height: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.green100,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'G',
                            style: TextStyle(
                              color: Color(0XFF4285F4),
                              fontSize: 48,
                            ),
                          ),
                          TextSpan(
                            text: 'o',
                            style: TextStyle(
                              color: Color(0XFFE94235),
                              fontSize: 40,
                            ),
                          ),
                          TextSpan(
                            text: 'o',
                            style: TextStyle(
                              color: Color(0XFFFABB05),
                              fontSize: 40,
                            ),
                          ),
                          TextSpan(
                            text: 'g',
                            style: TextStyle(
                              color: Color(0XFF4285F4),
                              fontSize: 40,
                            ),
                          ),
                          TextSpan(
                            text: 'l',
                            style: TextStyle(
                              color: Color(0XFF34A853),
                              fontSize: 40,
                            ),
                          ),
                          TextSpan(
                            text: 'e',
                            style: TextStyle(
                              color: Color(0XFFE94235),
                              fontSize: 40,
                            ),
                          ),
                          TextSpan(
                            text: '認証',
                            style: TextStyle(
                              color: ColorConstant.green0,
                              fontSize: 32,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                        result = (await _auth.signInWithCredential(credential))
                            as AuthCredential;
                        user = result.token as FirebaseFirestore;
                      } catch (e) {
                        print(e);
                      }
                      GoRouter.of(context).push('/top/:');
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
