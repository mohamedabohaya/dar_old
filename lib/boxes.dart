import 'package:hive/hive.dart';

import 'Database/transaction.dart';


class Boxes {
  static Box<User> getUsers() =>
      Hive.box<User>('users');
}
