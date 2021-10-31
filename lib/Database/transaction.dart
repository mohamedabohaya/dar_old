import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  String? name;

  @HiveField(1)
  late DateTime createdDate;

  @HiveField(2)
  String? email ;

  @HiveField(3)
  late String phone;

  @HiveField(4)
  late String password;
}