import 'package:get_it/get_it.dart';
import 'package:resturant/db/hiveHelper.dart';

final getIt = GetIt.instance;
void setUp() {
  getIt.registerSingleton<HiveHelper>(HiveHelper());
}
