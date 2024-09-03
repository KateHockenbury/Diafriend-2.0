import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../glucose_screen/glucose_screen_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

//added by Hock
//import 'package:hive/hive.dart';
//import 'package:hive_flutter/hive_flutter.dart';
//import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

import 'graphGlucose.dart';

class SaveGlucoseLevelScreenWidget extends StatefulWidget {
  const SaveGlucoseLevelScreenWidget({Key? key}) : super(key: key);

  @override
  _SaveGlucoseLevelScreenWidgetState createState() =>
      _SaveGlucoseLevelScreenWidgetState();
}

//Future<String> get _localPath async {
//final directory = await getApplicationDocumentsDirectory();
//print(directory.path);
//return directory.path;
//}

Future<File> get _localFile async {
  //final path = await _localPath;
  print("here I am KATE");
  return File('path/saveGlucose.txt');
}

class _SaveGlucoseLevelScreenWidgetState
    extends State<SaveGlucoseLevelScreenWidget> {
  TextEditingController glucoseLevelController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  //final _glucoseLevel = TextEditingController();//gets what the user typed
  //Hive.initFlutter();
  //Hive.registerAdapter(saveGlucose());
  //var box = Hive.openBox('testingBoxGlocose');
  //final _testingBoxGlucose = Hive.box('testingBoxGlucose');

  @override
  void initState() {
    //HOCK changed int from void
    super.initState();
    //glucoseLevelController = TextEditingController(); //gets what the user typed? I think
  }

  //Store user typed in ??-HOCK
  //String userPost = '';

  //Hock is back at it again
  //reference box
  //final _testingBoxGlucose = Hive.box('_testingBoxGlucose');

  //write it to a file
  writeData(double glucoseLevelController) async {
    //final Directory directory = await getApplicationDocumentsDirectory();
    //final File file = File('C:/DiaFriend-1.0/lib/save_glucose_level_screen/saveGlucose.txt');
    //await file.writeAsString(glucoseLevelController as String);
  }

  //
  //print('input data' + '$glucoseLevelController');
  //_testingBoxGlucose.put(1, '$glucoseLevelController');//glucoseLevelController);//like an array key value is the address of the data
  //doesn't have to be a string could be a list of stings or int ['kate',16].

  //read data
  Future<int> readData() async {
    try {
      final file = await _localFile;

      // Read the file
      final saveGlucose = await file.readAsString();

      return int.parse(saveGlucose);
    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }

  //read in from the file
  //print(_testingBoxGlucose.get(1));

  void printData() {
    //print file
    debugPrint('Print Data: ');
    //print(saveGlucose.txt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFFF1F4F8),
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 50,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0xFF0F1113),
                          size: 24,
                        ),
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GlucoseScreenWidget(),
                            ),
                          );
                        },
                        fillColor: null,
                        key: null,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GlucoseScreenWidget(),
                            ),
                          );
                        },
                        child: Text(
                          'Back',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF0F1113),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                child: Text(
                  'Input your level here',
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
      backgroundColor: Color(0xFFF1F4F8),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Text(
                      'Please test your glucose levels on a Glucometer or with a clinic and enter the accurate levels here',
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF57636C),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
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
                controller: glucoseLevelController,
                onChanged: (_) => EasyDebounce.debounce(
                  'glucoseLevelController',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),

                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Glucose levels',
                  labelStyle: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  hintText: 'Enter your glucose level',
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                  suffixIcon: glucoseLevelController.text.isNotEmpty
                      ? InkWell(
                          onTap: () => setState(
                            () => glucoseLevelController.clear(),
                          ),
                          child: Icon(
                            Icons.clear,
                            color: Color(0xFF757575),
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
                //HOCKENBURY-Attempting to save glucose level added:
                //yourController: yourController
                // TextInputType.number = yourController.text();
                //HOCKENBURY THIS IS BAD int TextInputType = int.parse(stdin.readLineSync());//
                //print("TextInputType");
              ),
            ),
          ),

          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: FFButtonWidget(
              //pop up
              onPressed: () async {
                //writeData(String glucoseLevelController);//trying
                //setState({userPost = glucoseLevelController.text} as VoidCallback);//WHYYYYYYYY????
                //String enteredText = glucoseLevelController.text;
                //writeData(glucoseLevelController as double);

                //print(enteredText);
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text('Value has been saved = ' +
                          'int.parse(glucoseLevelController)'), //'to make a string'
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text('Ok'),
                        ),
                      ],
                    );
                  },
                );
              },
              text: 'Save Values',
              options: FFButtonOptions(
                width: 270,
                height: 50,
                color: Colors.black,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 8,
                disabledColor: null,
                disabledTextColor: null,
                iconColor: null,
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
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: FFButtonWidget(
              //pop up
              onPressed: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GraphGlucose(),
                    )); //await
              }, //on pressed

              text: 'Graph',
              options: FFButtonOptions(
                width: 270,
                height: 50,
                color: Colors.black,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 8,
                disabledColor: null,
                disabledTextColor: null,
                iconColor: null,
                iconPadding: null,
                iconSize: null,
                padding: null,
                splashColor: null,
              ),
              icon: null,
              iconData: null,
            ),
          ),

          /*Padding(
            //HOCKENBURY trying to add a list
            padding: EdgeInsetsDirectional.fromSTEB(20, 24, 0, 0),//Start left 20px
            child: Text(
              'Past Levels:\n',
              
              //semanticsLabel: '$glucoseLevelController\n'//FIX LABEL//It actually works crazy

              semanticsLabel: '$glucoseLevelController\n', //IT WORKS!!! Well it just prints those words not the actual number but it is foward progress!! <3
              //controller: glucoseLevelController,
              ),
          ),*/

          //Hock here we go again:
          //MaterialButton(
          //onPressed: writeData(glucoseLevelController),
          //child: Text('Write'),
          //color: Colors.blue
          //),
          /*MaterialButton(
              onPressed: readData,
             child: Text('Read'),
             color: Colors.blue
             ),*/
        ],
      ),
    );
  }
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});
class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File("$path/counter.txt");
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();
      return int.parse(contents);
    } catch (e) {
      return (0);
    }
  }

  Future<File> writeCounter(int counter) async {
    final file = await _localFile;
    return file.writeAsString('$counter');
  }
}
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
//More of this video  https://www.youtube.com/watch?v=I62mvTQqfHA
  final CounterStorage storage = CounterStorage();

  MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
//more -hock
  @override
  void initState() {
    widget.storage.readCounter().then((int value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
    return widget.storage.writeCounter(_counter);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/
