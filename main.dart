//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_dart/implementation/pure_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'auth/firebase_user_provider.dart';
//import 'flutter_flow/flutter_flow_theme.dart';
import 'package:dia_friend/flutter_flow/internationalization.dart';
//import 'package:mongo_dart/mongo_dart.dart' hide State;
//import 'package:mongo_dart/mongo_dart.dart';//State already defined
import 'index.dart';
//import 'package:dia_friend/mongo/mongodb.dart';

void main() async {
  // any preprocessing can be done here, such as determining a device location
  //MONGO Database
  //WidgetsFlutterBinding.ensureInitialized();
  //await MongoDatabase.connect();
  // runApp is a Flutter function that runs your Flutter app
  //var db = Db("mongodb://localhost:27017");
  //await db.open();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DiaFriend',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
/*
      home: 
          Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
              ),
            ),*/
      home: DiaFriendHomeScreenWidget(),
    );
  }

  setLocale(Locale locale) {}

  setThemeMode(ThemeMode themeMode) {}
}



/*
void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //Firebase.initializeApp(); //took out the await at the beginning 
  //await FlutterFlowTheme.initialize();
  //FirebaseDart.setup();
  //MONGO Database
  //WidgetsFlutterBinding.ensureInitialized();
  //await MongoDatabase.connect();
  //Added by Hock
  //Initialize HIVE: local storage
  //await Hive.initFlutter();
  //OPEN BOX
  //var box = await Hive.openBox('testingBoxGlucose');
  //end of add by hock
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
	
	late Locale _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  //late Stream<DiaFriendFirebaseUser> userStream;
  //late DiaFriendFirebaseUser initialUser;
  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();
    //userStream = diaFriendFirebaseUserStream()
      //..listen((user) => initialUser);
    Future.delayed(
      Duration(seconds: 1),
      () => setState(() => displaySplashImage = false),
    );
  }

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
    _themeMode = mode;
    FlutterFlowTheme.saveThemeMode(mode);
  });

  @override
  Widget build(BuildContext context) {
    //var currentUser;//added by quick fix
    return MaterialApp(
      title: 'DiaFriend',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode, 
      //ignore: unnecessary_null_comparison
      home: displaySplashImage //initialUser == null || displaySplashImage
          ? Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
              ),
            )
					//: currentUser.loggedIns
             // ? LandingScreenWidget()
              : DiaFriendHomeScreenWidget(),
    );
  }
}
*/
