import '../flutter_flow/flutter_flow_theme.dart';
//import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../landing_screen/landing_screen_widget.dart';
//import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'dart:math';

class BMIScreenWidget extends StatefulWidget {
  const BMIScreenWidget({Key? key}) : super(key: key);

  @override
  _BMIScreenWidgetState createState() => _BMIScreenWidgetState();
}

class _BMIScreenWidgetState extends State<BMIScreenWidget> {
  late TextEditingController heightController;
  late TextEditingController weightController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  double? weightSaved;
  double? heightSaved;
  double? bmiResult; // = (weightSaved/ (heightSaved * heightSaved))*703;

  _updateTextHeight(_heightController) {
    setState(() {
      heightSaved = _heightController;
      print(heightSaved);
    });
  }

  _updateTextWeight(_weightController) {
    setState(() {
      weightSaved = _weightController;
      print(weightSaved);
    });
  }

  @override
  void initState() {
    super.initState();
    //weightController.addListener(() { });//LINK IN EMAIL
    heightController = TextEditingController();
    weightController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFFFFFFFFF),
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                child: Text(
                  'Body Mass Index',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 167, 199, 241),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                      child: Text(
                        'Calculate your BMI by providing your details below',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Outfit',
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 81, 81),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0x4D101213),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  controller: weightController,
                  onChanged: (_weightController) {
                    _updateTextWeight(_weightController);
                  },
                  onSaved: (weightSaved) {
                    //weightSaved =double.tryParse(_weightController);// 2.0 weightController as double;
                    //trying something
                    var _weightController = double.parse(weightSaved!);
                    assert(_weightController is double);
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Weight ',
                    labelStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Outfit',
                          color: Color.fromARGB(255, 25, 25, 25),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    hintText: 'Enter your weight in pounds',
                    hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color.fromARGB(255, 205, 205, 205),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(0, 162, 26, 26),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(0, 128, 122, 122),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 244, 4, 4),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                    suffixIcon: weightController.text.isNotEmpty
                        ? InkWell(
                            onTap: () => setState(
                              () => weightController.clear(),
                            ),
                            child: Icon(
                              Icons.clear,
                              color: Color.fromARGB(255, 44, 26, 26),
                              size: 22,
                            ),
                          )
                        : null,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 20, 24, 20),
              child: TextFormField(
                controller: heightController,
                onChanged: (_heightcontroller) {
                  _updateTextHeight(_heightcontroller);
                },
                onSaved: (heightController) {
                  //double heightSaved = heightController as double;
                  // bmiResult = (weightSaved/ (heightSaved * heightSaved))*703;
                  //print(bmiResult);
                },
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Height',
                  labelStyle: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  hintText: 'Enter your height in inches',
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color.fromARGB(255, 205, 205, 205),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(0, 159, 45, 45),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(0, 147, 90, 90),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 23, 141, 29),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                  suffixIcon: heightController.text.isNotEmpty
                      ? InkWell(
                          onTap: () => setState(
                            () => heightController.clear(),
                          ),
                          child: Icon(
                            Icons.clear,
                            color: Color.fromARGB(255, 213, 16, 147),
                            size: 22,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF0F1113),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                keyboardType: TextInputType.number,
              ),
            ),
            //bmiResult = (weightSaved/ (heightSaved * heightSaved))*703,
            //debugPrint('bmiResult'),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  //bmiResult = (weightSaved/ (heightSaved * heightSaved))*703;
                  // ignore: unused_local_variable
                  var confirmDialogResponse = await showDialog<bool>(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('BMI Results'),
                        content: Text('Your BMI will be displayed here:',
                            semanticsLabel: bmiResult as String),
                        actions: [
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, false),
                            child:
                                Text('Height is, $heightSaved'), //$heightSaved
                          ),
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, true),
                            child: Text('Weight is weightSaved'), //$weightSaved
                          ),
                          TextButton(
                            onPressed: () =>
                                Navigator.pop(alertDialogContext, true),
                            child: Text('BMI is bmiResult'), //$bmiResult
                          ),
                        ],
                      );
                    },
                  ); //??
                  //false;
                },
                text: 'Get BMI',
                options: FFButtonOptions(
                  width: 270,
                  height: 50,
                  color: Color.fromARGB(255, 15, 19, 18), //4), 20, 76, 133),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Outfit',
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: const Color.fromARGB(0, 190, 100, 100),
                    width: 1,
                  ),
                  borderRadius: 8,
                  disabledColor: null,
                  disabledTextColor: null,
                  iconColor: Color.fromARGB(255, 0, 0, 0),
                  iconPadding: null,
                  iconSize: null,
                  padding: null,
                  splashColor: null,
                ),
                icon: null,
                iconData: null,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/bmi-chart.gif',
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.4,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
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
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(0, 0, 0, 0),
                          width: 1,
                        ),
                        borderRadius: 12,
                        disabledColor: null,
                        disabledTextColor: null,
                        iconColor: Color.fromARGB(225, 0, 0, 0),
                        iconPadding: null,
                        iconSize: null,
                        padding: null,
                        splashColor: null,
                        elevation: null,
                      ),
                      iconData: null,
                    ),
                    // ),
                  ], //Children
                ),
              ),
            ),
          ], //Children
        ),
      ),
    );
  } //Widget
} //Class
