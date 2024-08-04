
import 'dart:math';

class User {
  final int id;
  final String name;
  final String message;
  final String time;
  final String profilePic;

  User({
    int? id,
    required this.name,
    required this.message,
    required this.time,
    required this.profilePic,
  }) : id = id ??  Random().nextInt(100);
}
