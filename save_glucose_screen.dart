//Another vid: https://www.youtube.com/watch?v=4DnO9noxYjA
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
//import 'package:quiver/strings.dart';

class SaveGlucose extends StatefulWidget {
  SaveGlucose({Key? key, required glucose});
  final GlucoseStorage storage = GlucoseStorage();

  @override
  _SaveGlucoseState createState() => _SaveGlucoseState();
}

class _SaveGlucoseState extends State<SaveGlucose> {
  final formKey = GlobalKey<FormState>();
  final glucoseText = TextEditingController();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String userPost = '';
  int glucose = 0;
  int value = 0;
  //int _glucose = 0;
  @override
  void initState() {
    super.initState();
    widget.storage.readInput().then((int value) {
      setState(() {
        glucose = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Input Glucose Level'),
      ),
      body: Form(
          key: formKey,
          child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GlucoseTextFormField(
                    labelText: 'Glucose Level',
                    intValueSetter: (value) => glucose = value,
                  ),
                  Container(
                    color: Colors.red,
                    //child: Text(userPost),
                  ),
                ],
              ))),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
          }
          //validate and save
          setState(() {
            userPost = glucoseText.text;
          });
        },
      ),
    );
  }
}

class GlucoseTextFormField extends StatelessWidget {
  const GlucoseTextFormField({
    Key? key,
    required this.labelText,
    required this.intValueSetter,
  }) : super(key: key);
  final String labelText;
  final void Function(int value) intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
        signed: false,
      ),
      validator: (value) {
        if (value == null) {
          //} || int.tryParse(value == null)){
          return 'Must be a number';
        } else {
          return null;
        }
      },
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '')),
    );
  }
}

class GlucoseStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File("$path/saveGlucose.txt");
  }

  Future<int> readInput() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();
      return int.parse(contents);
    } catch (e) {
      return (0);
    }
  }

  Future<File> writetofile(int glucose) async {
    final file = await _localFile;
    return file.writeAsString('$GlucoseTextFormField');
  }
}
