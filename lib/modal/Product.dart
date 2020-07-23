import 'package:json_serializable/json_serializable.dart';

class Product {
  int id;
  String name;
  String type;
  int age;
  bool medicalCheck;

  Product({this.id, this.name, this.type, this.age, this.medicalCheck});
}
