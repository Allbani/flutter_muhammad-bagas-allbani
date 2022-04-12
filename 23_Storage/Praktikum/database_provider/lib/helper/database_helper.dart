import 'package:database_provider/model/contact_model.dart';
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

  final String _tableName = 'tasks';

  Future<Database> _initializeDb() async {
    var db = openDatabase(
      join(await getDatabasesPath(), 'contact.db'),
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

  Future<void> insertContact(ContactModel contactModel) async {
    final Database db = await database;
    await db.insert(
      _tableName,
      contactModel.toMap(),
    );
  }

  Future<List<ContactModel>> getContact() async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(_tableName);
    return results.map((e) => ContactModel.fromMap(e)).toList();
  }

  Future<ContactModel> getContactById(int id) async {
    final Database db = await database;
    List<Map<String, dynamic>> results = await db.query(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
    return results.map((e) => ContactModel.fromMap(e)).first;
  }

  Future<void> updateContact(ContactModel contactModel) async {
    final db = await database;
    await db.update(
      _tableName,
      contactModel.toMap(),
      where: 'id = ?',
      whereArgs: [contactModel.id],
    );
  }

  Future<void> deletedContact(int id) async {
    final db = await database;
    await db.delete(
      _tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
