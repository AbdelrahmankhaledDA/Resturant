import 'package:hive/hive.dart';

part 'mealsModel.g.dart';

@HiveType(typeId: 0)
class MealsModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String image;
  @HiveField(3)
  String price;
  @HiveField(4)
  String description;

  MealsModel({
    required this.id,
    required this.description,
    required this.image,
    required this.name,
    required this.price,
  });
}
