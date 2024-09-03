import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'constant.dart';

class MongoDatabase {
  static connect() async {
    var db = await Db.create(MONGO_URL);
    await db.open(); //opens connections
    inspect(db); //show settings 
    var collection = db.collection(COLLECTION_NAME); //used to save, delete anything
  
    //Video #2
    await collection.insertOne({
      "username": "mp",
      "name": "maxpayne",
      "email": "maxpayne@gmail.com"
    });
    print(await collection.find().toList());
  }
}