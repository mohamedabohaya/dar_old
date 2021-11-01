import 'dart:io';
import 'package:care/models/doctor.dart';
import 'package:care/models/old_year.dart';
import 'package:care/models/user.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance =  DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database? _db;
  final String tableUser = "User";
  final String tableDoctor = "Doctor";
  final String tableOld = "Old";
  final String columnName = "name";
  final String columnUserName = "username";
  final String columnPassword = "password";
  final String columnEmail = "email";
  final String columnPhone = "phone";
  final String nameDoctor = "nameDoctor";
  final String phoneDoctor = "phoneDoctor";
  final String majorDoctor = "majorDoctor";
  final String emailDoctor = "emailDoctor";
  final String usernameDoctor = "usernameDoctor";
  final String passwordDoctor = "passwordDoctor";
  final String firstNameOld = "firstNameOld";
  final String phoneOld = "phoneOld";
  final String secondNameOld = "secondNameOld";
  final String emailOld = "emailOld";
  final String usernameOld = "usernameOld";
  final String passwordOld = "passwordOld";

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE User(id INTEGER PRIMARY KEY, name TEXT, username TEXT, password TEXT,email TEXT,phone TEXT, flaglogged TEXT)");
    print("Table is created");
    await db.execute(
        "CREATE TABLE Doctor(id INTEGER PRIMARY KEY, nameDoctor TEXT, usernameDoctor TEXT, passwordDoctor TEXT,emailDoctor TEXT,phoneDoctor TEXT, majorDoctor TEXT)");
    await db.execute(
        "CREATE TABLE Old(id INTEGER PRIMARY KEY, firstNameOld TEXT, usernameOld TEXT, passwordOld TEXT,emailOld TEXT,phoneOld TEXT, secondNameOld TEXT)");

  }
  Future<List> getAllRecords(String dbTable) async {
    var dbClient = await db;
    var result = await dbClient.rawQuery("SELECT * FROM $dbTable");

    return result.toList();
  }

  //insertion
  Future<int> saveUser(User user) async {
    var dbClient = await db;
    print(user.name);
    int res = await dbClient.insert("User", user.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM User');
    print(list);
    return res;
  }

  Future<int> saveDoctor(Doctor doctor) async {
    var dbClient = await db;
    int res = await dbClient.insert("Doctor", doctor.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Doctor');
    print(list);
    return res;
  }
  Future<int> saveOld(Old old) async {
    var dbClient = await db;
    int res = await dbClient.insert("Old", old.toMap());
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Old');
    print(list);
    return res;
  }

   Future<int> updateItem(int id, String? password) async {
    var dbClient = await db;

    final data = {
      'password': password,
    };

    final result = await dbClient.update('User', data, where: "id = ?", whereArgs: [id]);
    return result;
  }

  //deletion
  Future<int> deleteUser(User user) async {
    var dbClient = await db;
    int res = await dbClient.delete("User");
    return res;
  }
  Future<User?> selectUser(User user) async{
    print("Select User");
    print(user.username);
    print(user.password);
    var dbClient = await db;
    List<Map> maps = await dbClient.query(tableUser,
        columns: [columnUserName, columnPassword],
        where: "$columnUserName = ? and $columnPassword = ?",
        whereArgs: [user.username,user.password]);
    print(maps);
    if (maps.length > 0) {
      print("User Exist !!!");
      return user;
    }else {
      return null;
    }
  }
}
