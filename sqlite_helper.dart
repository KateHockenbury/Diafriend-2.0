import 'package:sqflite/sqflite.dart';

final String tableName='BMIs';
//final String colID='id';
final String colWeight='weight';
final String colHeight='hight';

class SqliteHelper{
  late Database _database;

  open() async{
    _database = await openDatabase(
      'local_db.db',
      version: 1, 
      onCreate: (Database db, int version) async {
        await db.execute('Create table $tableName ('
        //'$colID integer primary key autoincrement'
        '$colWeight double not null,'
        '$colHeight double not null'
        ')');
      }
    );
  }

  Future<bool> insertWeight(Map<String,dynamic> dataToInsert) async {
    await open();
    int rowWeight = await _database.insert(tableName, dataToInsert);
    return rowWeight > 0;
  }
  Future<bool> insertHeight(Map<String,dynamic> dataToInsert) async {
    await open();
    int rowHeight = await _database.insert(tableName, dataToInsert);
    return rowHeight > 0;
  /*
  Future<List<Map>>fetchAll() async {
    await open();
    List<Map> items = await _database.query(tableName);
    return items; 
  }

   Future<List<Map>>fetchAllOrderedByID() async {
    await open();
    List<Map> items = await _database.query(tableName, orderBy: 'id desc');
    return items; 
  }

  Future<Map>fetchOne(int id) async {
    await open();
    List<Map> items = await _database.query(tableName, where: '$colID=?', whereArgs: [id]);
    return items.first;
  }

  Future<bool> update(int id, Map<String, dynamic> dataToUpdate) async {
    await open();
    int rowsUpdated = await _database.update(tableName, dataToUpdate, where: '$colID=?', whereArgs: [id]);
    return rowsUpdated >0;
  }

  Future<bool> delete(int id) async{
    await open();
    int rowsDeleted = await _database.delete(tableName, where: '$colID = ?', whereArgs: [id]);
    return rowsDeleted==1;
  }

  Future<bool> deleteAll() async {
    await open();
    int rowsDeleted = await _database.delete(tableName);
    return rowsDeleted>0;
  }
  */
  }
}