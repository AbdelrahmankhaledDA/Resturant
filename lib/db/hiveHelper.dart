import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:resturant/models/mealsModel.dart';

class HiveHelper {
  // HiveHelper._internal();
  //  static final HiveHelper _object = HiveHelper._internal();
  // factory HiveHelper() {
  //   return _object;
  // }

  static const String boxname = 'meals';
  late Box<MealsModel> box;
  Future<void> startDB() async {
    final path = await getApplicationDocumentsDirectory();
    await Hive.initFlutter(path.path);
    Hive.registerAdapter(MealsModelAdapter());
    box = await Hive.openBox<MealsModel>(boxname);
  }

  Future<void> addMeal(MealsModel meal) async {
    await box.add(meal);
  }

  Future<List<MealsModel>> getAllmeals() async {
    return box.values.toList();
  }

  int get length => box.length;
}
