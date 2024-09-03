import 'package:flutter/material.dart';
/*
void main() {
  runApp(const MyApp());
}
*/
//this just a counter button app to learn some things
/*
//Meat and potatoes
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

// this is a new vid for bmi https://www.youtube.com/watch?v=txmYhAvTWV0&t=44s
class BMICalulator extends StatefulWidget {
  const BMICalulator({Key? key});

  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BMICalculator(),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key});

  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  //variable for custom radio button
  int currentindex = 0;
  String result = "";
  double height = 0;
  double weight = 0;

  //input controllers
  //time 14:03
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ],
        ),
        //body of the app
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(
                  12.00,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        radioButton("Male", Colors.blue, 0),
                        radioButton("Female", Colors.pink, 1),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    //NOW CREATE INPUT FORM
                    const Text(
                      "Your height in inches: ",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      //adding text contoller
                      controller: heightController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "Your height in inches",
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          )),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    const Text(
                      "Your weight in pounds: ",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      //add text controller
                      controller: weightController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "Your weight in pounds",
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          )),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    //calculate button
                    SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: TextButton(
                          //use to be Flat button but have to change
                          onPressed: () {
                            //using method to calclulate
                            setState(() {
                              height =
                                  double.parse(heightController.value.text);
                              weight =
                                  double.parse(weightController.value.text);
                            });
                            caluclateBMI(height, weight);
                          },
                          //color: Colors.blue,
                          child: const Text(
                            "Calculate BMI",
                            style: TextStyle(color: Colors.black),
                          ),
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(" Your BMI is: ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ),

                    const SizedBox(
                      height: 50.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        result, //removed "$result",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ))));
  }

  void caluclateBMI(double height, double weight) {
    double finalresult = (weight / (height * height)) * 703;
    String bmi = finalresult.toStringAsFixed(2);
    setState(() {
      result = bmi; // as double;
    });
  }

  //function to changed the index value on button pressed
  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  //new custom widget
  Widget radioButton(String value, Color color, int index) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12.0),
        //height to the button
        height: 80.0,
        child: TextButton(
            //use to be Flat button but have to change
            //change color of button depending on clicked or not
            //color: currentindex == index ? color : Colors.grey[200],
            //Adding boarder
            /*shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),*/
            onPressed: () {
              changeIndex(index);
            },
            child: Text(value,
                style: TextStyle(
                    color: currentindex == index
                        ? Color.fromARGB(255, 0, 0, 0)
                        : color,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
