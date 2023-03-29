import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/sqflite_demo_hk/usermodelhk.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelperHk {
  String userInfoTableName = "USERDETAILS";

  Future<Database> getDatabase() async {
    String path = await getDatabasesPath();

    String dbPath = join(path, "HarkishanDb.db");
    Database database = await openDatabase(
      dbPath,
      version: 6,
      onCreate: (db, version) {
        db
            .execute(
                "create table $userInfoTableName (id integer primary key autoincrement,name text,email text,fatherName text, password text, mobileNumber integer, adharNumber integer, colonyName text, cityName text, pinCode integer, date text,gender text);")
            .catchError((error) {
          debugPrint("ERROR:- $error");
        });
      },
    );
    return database;
  }

  Future<int> insertUserDetails(UserModelHk userModelHk) async {
    Database database = await getDatabase();

    int result = await database.insert(userInfoTableName, userModelHk.toJson());
    conflictAlgorithm:
    ConflictAlgorithm.ignore;
    return result;
  }

  Future<List<UserModelHk>> readUserInfo() async {
    Database database = await getDatabase();
    List<Map> result = await database.query(
      userInfoTableName,
    );
    List<UserModelHk> userModelHkList = [];

    result.forEach((element) {
      UserModelHk userModelhk = UserModelHk.fromJson(element);
      userModelHkList.add(userModelhk);
    });

    return userModelHkList;
  }

  Future<UserModelHk?> getLoginUser(String email, String password) async {
    var dbClient = await getDatabase();
    var res = await dbClient.query(userInfoTableName,
        where: "email = ? and password = ?", whereArgs: [email, password]);

    if (res.length > 0) {
      return UserModelHk.fromJson(res.first);
    }

    return null;
  }

  Future<UserModelHk?> getPassword(String password) async {
    var dbClient = await getDatabase();
    var res = await dbClient
        .query(userInfoTableName, where: "password = ?", whereArgs: [password]);
    if (res.length > 0) {
      return UserModelHk.fromJson(res.first);
    }
    return null;
  }

  Future<int> updateUserDetails(UserModelHk userModelHk) async {
    Database database = await getDatabase();
    int result = await database.update(userInfoTableName, userModelHk.toJson(),
        where: "id = ?", whereArgs: [userModelHk.id]);
    return result;
  }

  Future<int> updateUserPassword(UserModelHk userModelHk) async {
    Database database = await getDatabase();
    int result = await database.rawUpdate('''
    UPDATE userInfoTableName 
    SET password = ?
    WHERE _id = ?
    ''',
        [1234, 1]
    );
    return result;
  }

}
