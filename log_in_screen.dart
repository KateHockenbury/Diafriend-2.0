import 'package:dia_friend/index.dart';
import 'package:flutter/material.dart';
import 'package:dia_friend/auth/auth_util.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';

class LogInScreenWidget extends StatefulWidget {
  const LogInScreenWidget({Key? key}) : super(key: key);

  @override
  _LogInScreenWidget createState() => _LogInScreenWidget();
}

class _LogInScreenWidget extends State<LogInScreenWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  get scaffoldKey => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        body: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'DiaFriend',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in:',
                  style: TextStyle(fontSize: 20),
                )),

            //USER NAME
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'username@domain.com'),
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
                    hintText: '**********'),
              ),
            ),

            // FORGOT PASSWORD
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
              ),
            ),

            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LandingScreenWidget(), ////GoogleWidget(), //added by HOCK, doesn't work yet//LandingScreenWidget(),
                      ),
                    );
                  },
                  text: 'Login with Google',
                  options: FFButtonOptions(
                    width: 200,
                    height: 50,
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 8,
                  ),
                )),

            //LOG IN BUTTON
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LandingScreenWidget(), //added by HOCK, doesn't work yet//LandingScreenWidget(),
                      ),
                    );
                  },
                  text: 'Login',
                  options: FFButtonOptions(
                    width: 200,
                    height: 50,
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 8,
                  ),
                )),
            Row(
              children: <Widget>[
                const Text('Do not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen //HOCK add
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        )
        //IDK

        );
  }
}
