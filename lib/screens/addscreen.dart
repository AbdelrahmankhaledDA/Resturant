import 'package:flutter/material.dart';
import 'package:resturant/db/hiveHelper.dart';
import 'package:resturant/models/mealsModel.dart';
import 'package:resturant/service/getitHelper.dart';

class addScreen extends StatelessWidget {
  const addScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController mealNamecontroller = TextEditingController();
    TextEditingController mealPricecontroller = TextEditingController();
    TextEditingController mealimagecontroller = TextEditingController();
    TextEditingController mealdisccontroller = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          Text("Add screen"),
          TextField(
            controller: mealNamecontroller,
            decoration: InputDecoration(labelText: "meal name"),
          ),
          TextField(
            controller: mealPricecontroller,
            decoration: InputDecoration(labelText: "meal price"),
          ),
          TextField(
            controller: mealimagecontroller,
            decoration: InputDecoration(labelText: "meal image"),
          ),
          TextField(
            controller: mealdisccontroller,
            decoration: InputDecoration(labelText: "meal description"),
          ),
          ElevatedButton(
            onPressed: () async {
              MealsModel meal = MealsModel(
                id: getIt<HiveHelper>().length + 1,
                description: mealdisccontroller.text,
                image: mealimagecontroller.text,
                name: mealNamecontroller.text,
                price: mealPricecontroller.text,
              );
              await getIt<HiveHelper>().addMeal(meal);
              Navigator.pop(context);
            },
            child: Text("save"),
          ),
        ],
      ),
    );
  }
}
