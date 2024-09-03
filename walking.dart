import 'package:dia_friend/activity_content_screen/activity_content_screen_widget.dart';
import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
//import '../landing_screen/landing_screen_widget.dart';
//import 'package:google_fonts/google_fonts.dart';

/*class WalkingImage extends StatefulWidget {
  const WalkingImage({Key? key}) : super(key: key);

  @override
  _WalkingImageState createState() => _WalkingImageState();
}

class _WalkingImageState extends State<WalkingImage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}*/

class WalkingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Walking"),
            ),
            body: Column(children: [
              Image.asset(
                'assets/images/walkinggg.jpeg',
                width: 600,
                height: 400,
                fit: BoxFit.fitWidth,
              ),

              /// your button is here:
              Row(
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ActivityContentScreenWidget(),
                        ),
                      );
                    },
                    text: 'Go Back',
                    icon: Icon(
                      Icons.chevron_left_outlined,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Colors.black,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ], // btn 1
              )
            ])));
  }
}





/*
@override
Widget build(BuildContext context) {
  var scaffoldKey;
  return Scaffold(
    key: scaffoldKey,
    body: Image.asset(
      'C:\DiaFriend-1.0\assets\images\veggies.jpeg', //'assets/images/Stairway-to-Fitness.jpeg',
      width: 300,
      height: 300,
      fit: BoxFit.fitWidth,
    ),

    /*Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LandingScreenWidget(),
                      ),
                    );
                  },
                  text: 'Go Back',
                  icon: Icon(
                    Icons.chevron_left_outlined,
                    size: 15,
                  ),
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                    disabledColor: null,
                    disabledTextColor: null,
                    iconPadding: null,
                    iconColor: null,
                    iconSize: null,
                    padding: null,
                    splashColor: null,
                    elevation: null,
                  ),
                  iconData: null,
                ),
              ],
            ),
          ),*/
  );
}
*/