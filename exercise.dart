import 'package:dia_friend/activity_content_screen/activity_content_screen_widget.dart';
import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';

class ExcerciseImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Excercise"),
            ),
            body: Column(children: [
              Image.asset(
                'assets/images/ExerciseBurnCalories.jpg', //Change image to running
                width: 600,
                height: 400,
                fit: BoxFit.fitHeight,
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
