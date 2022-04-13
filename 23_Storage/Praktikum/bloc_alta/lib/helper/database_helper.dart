import 'package:bloc_alta/model/contact_data.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static DataBaseHelper? _dataBaseHelper;
  static late Database _database;
  DataBaseHelper._internal() {
    _dataBaseHelper = this;
  }

  factory DataBaseHelper() => _dataBaseHelper ?? DataBaseHelper._internal();

  Future<Database> get database async {
    _database = await _initializeDb();
    return _database;
  }

  final String _tableName = 'bloc';

  Future<Database> _initializeDb() async {
    var db = openDatabase(
      join(await getDatabasesPath(), 'bloc_contact.db'),
      onCreate: (db, version) async {
        await db.execute(
          '''CREATE TABLE $_tableName(
            id INTEGER PRIMARY KEY, 
            name TEXT, 
            number TEXT
          )''',
        );
      },
      version: 1,
    );
    return db;
  }

  Future<void> inseetContact(ContactData contactData) async {
    final Database db = await database;
    await db.insert(
      _tableName,
      contactData.toMap(),
    );
  }

  Future<List<ContactData>> getContact() async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(_tableName);
    return results.map((e) => ContactData.fromMap(e)).toList();
  }

  Future<ContactData> getContactByName(String name) async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      _tableName,
      where: 'name = ?',
      whereArgs: [name],
    );
    return results.map((e) => ContactData.fromMap(e)).first;
  }

  Future<void> updateContact(ContactData contactData) async {
    final Database db = await database;
    await db.update(
      _tableName,
      contactData.toMap(),
      where: 'name = ?',
      whereArgs: [contactData.name],
    );
  }

  Future<void> deletedContact(String name) async {
    final Database db = await database;
    await db.delete(
      _tableName,
      where: 'name = ?',
      whereArgs: [name],
    );
  }
}
