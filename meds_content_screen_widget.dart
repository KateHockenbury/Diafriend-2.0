import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../landing_screen/landing_screen_widget.dart';

class MedsContentScreenWidget extends StatefulWidget {
  const MedsContentScreenWidget({Key? key}) : super(key: key);

  @override
  _MedsContentScreenWidgetState createState() =>
      _MedsContentScreenWidgetState();
}

class _MedsContentScreenWidgetState extends State<MedsContentScreenWidget> {
  late String selectMedsValue1 = '';
  late String pillsOptionsValue1 = '';
  late String pillsQtyValue1 = '';
  late String pillsTimeValue1 = '';

  late String selectMedsValue2 = '';
  late String pillsOptionsValue2 = '';
  late String pillsQtyValue2 = '';
  late String pillsTimeValue2 = '';
  String selectedMed = 'Med 1'; // Default selected value
  late String selectedPillsTime = 'Select Time'; // Default selected value
  late String selectedPillsQty = 'Select Quantity'; // Default selected value

  final scaffoldKey = GlobalKey<ScaffoldState>();

  //var index;

  //get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F4F8),
        automaticallyImplyLeading: false,
        title: Text(
          'Select your medications',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Outfit',
                color: Color(0xFF0F1113),
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: DropdownButton<String>(
                                  value: selectedMed,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedMed = newValue!;
                                    });
                                  },
                                  items: <String>['Med 1', 'Med 2', 'Med 3']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                )),
                          ),
                        ],
                      ),
                    ),
                    // Add pillsOptions field
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  pillsOptionsValue1 = value;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'Medicine Name',
                                hintText: 'Enter medicine name',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add pillsQty field
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: DropdownButton<String>(
                            value: selectedPillsQty,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedPillsQty = newValue!;
                              });
                            },
                            items: <String>[
                              'Select Quantity',
                              '.5 Tablet',
                              '1 Tablet',
                              '2 Tablets',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                        ],
                      ),
                    ),
                    // Add pillsTime field
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              value: selectedPillsTime,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedPillsTime = newValue!;
                                });
                              },
                              items: <String>[
                                'Select Time',
                                'Morning',
                                'Afternoon',
                                'Evening',
                                'Night'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 20, 25, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Your medications have been saved !'),
                              content: Text(
                                  'You will receive a reminder 10 mins before to have your meds'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      text: 'Save ',
                      icon: Icon(
                        Icons.done,
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12, 20, 0, 20),
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
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F4F8),
        automaticallyImplyLeading: false,
        title: Text(
          'Select your medications',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Outfit',
                color: Color(0xFF0F1113),
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: FlutterFlowDropDown(
                                options: ['Med 1', 'Med2', 'med 3'],
                                onChanged: (val) {
                                  setState(() {
                                    selectMedsValue1 = val;
                                  });
                                },
                                height: 60,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.black,
                                    ),
                                hintText: 'Please select Meds',
                                elevation: 0,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                margin: EdgeInsets.zero,
                                hidesUnderline: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add pillsOptions field
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  pillsOptionsValue1 = value;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'Pills Options',
                                hintText: 'Enter pills options',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add pillsQty field
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  pillsQtyValue1 = value;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'Pills Quantity',
                                hintText: 'Enter pills quantity',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add pillsTime field
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  pillsTimeValue1 = value;
                                });
                              },
                              decoration: InputDecoration(
                                labelText: 'Pills Time',
                                hintText: 'Enter pills time',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              /*Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Input the details of your meds and save to receive reminders ',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
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
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: FlutterFlowDropDown(
                                options: ['Med 1', 'Med2', 'med 3'],
                                onChanged: (val) {
                                  setState(() {
                                    //var index;
                                    //var index = 0;
                                    /*if (index == 1) {
                                      selectMedsValue1 = val;
                                    } else if (index == 2) {
                                      selectMedsValue2 = val;
                                    }*/ /////////////////////////////[]
                                  });
                                },
                                height: 60,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.black,
                                    ),
                                hintText: 'Please select Meds',
                                elevation: 0,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                margin: EdgeInsets.zero,
                                hidesUnderline: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add other fields like pillsOptions, pillsQty, and pillsTime here
                  ],
                ),
              )*/
            ],
          ),
        ),
      ),
    );*/

/*
class MedsContentScreenWidget extends StatefulWidget {
  const MedsContentScreenWidget({Key? key}) : super(key: key);

  @override
  _MedsContentScreenWidgetState createState() =>
      _MedsContentScreenWidgetState();
}

class _MedsContentScreenWidgetState extends State<MedsContentScreenWidget> {
  late String selectMedsValue1 = "0";
  late String pillsOptionsValue1 = "0";
  late String pillsQtyValue1 = "0";
  late String pillsTimeValue1 = "0";

  late String selectMedsValue2 = "0";
  late String pillsOptionsValue2 = "0";
  late String pillsQtyValue2 = "0";
  late String pillsTimeValue2 = "0";

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F4F8),
        automaticallyImplyLeading: false,
        title: Text(
          'Select your medications',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Outfit',
                color: Color(0xFF0F1113),
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Input the details of your meds and save to receive reminders ',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
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
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: FlutterFlowDropDown(
                                options: ['Med 1', 'Med2', 'med 3'],
                                onChanged: (val) {
                                  var index; //idk
                                  if (index == 1) {
                                    setState(() => selectMedsValue1 = val);
                                  } else if (index == 2) {
                                    setState(() => selectMedsValue2 = val);
                                  }
                                },
                                height: 60,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.black,
                                    ),
                                hintText: 'Please select Meds',
                                elevation: 0,
                                borderColor: Colors.transparent,
                                borderWidth: 0,
                                margin: EdgeInsets.zero,
                                hidesUnderline: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add other fields like pillsOptions, pillsQty, and pillsTime here
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/
/*
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../landing_screen/landing_screen_widget.dart';
import 'package:flutter/material.dart';

class MedsContentScreenWidget extends StatefulWidget {
  const MedsContentScreenWidget({Key? key}) : super(key: key);

  @override
  _MedsContentScreenWidgetState createState() =>
      _MedsContentScreenWidgetState();
}

class _MedsContentScreenWidgetState extends State<MedsContentScreenWidget> {
  late String pillsOptionsValue1 = "0";
  late String selectMedsValue1 = "0";
  late String pillsQtyValue1 = "0";
  late String pillsTimeValue1 = "0";
  late String pillsOptionsValue2 = "0";
  late String selectMedsValue2 = "0";
  late String pillsQtyValue2 = "0";
  late String pillsTimeValue2 = "0";
  String selectedMed = 'Med 1'; // Default selected value

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F4F8),
        automaticallyImplyLeading: false,
        title: Text(
          'Select your medications',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Outfit',
                color: Color(0xFF0F1113),
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Input the details of your meds and save to receive reminders ',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: Text(
                      '1.',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DropdownButton<String>(
                            value: selectedMed,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedMed = newValue!;
                              });
                            },
                            items: <String>['Med 1', 'Med 2', 'Med 3']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowDropDown(
                            initialOption: pillsOptionsValue1,
                            options: ['1 pill', '2 pills', ''],
                            onChanged: (val) =>
                                setState(() => pillsOptionsValue1 = val),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 60,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.black,
                                    ),
                            hintText: 'Number of pills',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowDropDown(
                            initialOption: pillsQtyValue1,
                            options: ['20 mgs', '10 mgs', '30 mgs'],
                            onChanged: (val) =>
                                setState(() => pillsQtyValue1 = val),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 60,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.black,
                                    ),
                            hintText: 'Quantity of meds',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Colors.transparent,
                            borderWidth: 0,
                            borderRadius: 0,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                      child: FlutterFlowDropDown(
                        initialOption: pillsTimeValue1,
                        options: [
                          'Before Breakfast (8am-9am)',
                          'After Breakfast (9am-10am)',
                          'Before Lunch (12.30 pm -1pm)',
                          'After Lunch (1pm - 2pm)',
                          'Bedtime ( 10pm-11pm)'
                        ],
                        onChanged: (val) =>
                            setState(() => pillsTimeValue1 = val),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 60,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Colors.black,
                                ),
                        hintText: 'Time to take',
                        fillColor: Colors.white,
                        elevation: 2,
                        borderColor: Colors.transparent,
                        borderWidth: 0,
                        borderRadius: 0,
                        margin: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        hidesUnderline: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 25, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text(
                                        'Your medications have been saved !'),
                                    content: Text(
                                        'You will receive a reminder 10 mins before to have your meds'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            text: 'Save ',
                            icon: Icon(
                              Icons.done,
                              size: 15,
                            ),
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: Colors.black,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
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
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                child: Text(
                                  '2.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 24),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowDropDown(
                                        options: ['Med 1', 'Med2', 'med 3'],
                                        onChanged: (val) => setState(
                                            () => selectMedsValue2 = val),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height: 60,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.black,
                                            ),
                                        hintText: 'Please select Meds',
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0,
                                        borderRadius: 0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 4, 12, 4),
                                        hidesUnderline: true,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 24),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowDropDown(
                                        initialOption: pillsOptionsValue2,
                                        options: ['1 pill', '2 pills', ''],
                                        onChanged: (val) => setState(
                                            () => pillsOptionsValue2 = val),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height: 60,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.black,
                                            ),
                                        hintText: 'Number of pills',
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0,
                                        borderRadius: 0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 4, 12, 4),
                                        hidesUnderline: true,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 24),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowDropDown(
                                        initialOption: pillsQtyValue2,
                                        options: ['20 mgs', '10 mgs', '30 mgs'],
                                        onChanged: (val) => setState(
                                            () => pillsQtyValue2 = val),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height: 60,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.black,
                                            ),
                                        hintText: 'Quantity of meds',
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0,
                                        borderRadius: 0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            12, 4, 12, 4),
                                        hidesUnderline: true,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 20),
                                      child: FlutterFlowDropDown(
                                        initialOption: pillsTimeValue2,
                                        options: [
                                          'Before Breakfast (8am-9am)',
                                          'After Breakfast (9am-10am)',
                                          'Before Lunch (12.30 pm -1pm)',
                                          'After Lunch (1pm - 2pm)',
                                          'Bedtime ( 10pm-11pm)'
                                        ],
                                        onChanged: (val) => setState(
                                            () => pillsTimeValue2 = val),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height: 60,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.black,
                                            ),
                                        hintText: 'Time to take',
                                        fillColor: Colors.white,
                                        elevation: 2,
                                        borderColor: Colors.transparent,
                                        borderWidth: 0,
                                        borderRadius: 0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            10, 10, 10, 10),
                                        hidesUnderline: true,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 15, 24),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 20),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          'Your medications have been saved !'),
                                                      content: Text(
                                                          'You will receive a reminder 10 mins before to have your meds'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                              text: 'Save ',
                                              icon: Icon(
                                                Icons.done,
                                                size: 15,
                                              ),
                                              options: FFButtonOptions(
                                                width: 130,
                                                height: 40,
                                                color: Colors.black,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LandingScreenWidget(),
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
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/