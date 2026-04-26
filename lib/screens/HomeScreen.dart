import 'package:flutter/material.dart';
import 'package:resturant/db/hiveHelper.dart';
import 'package:resturant/models/mealsModel.dart';
import 'package:resturant/screens/addscreen.dart';
import 'package:resturant/service/getitHelper.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<MealsModel> myMeals = [];

  @override
  void initState() {
    super.initState();
  }

  getMeals() async {
    final meals = await getIt<HiveHelper>().getAllmeals();
    setState(() {
      myMeals = meals;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("home"),
          Expanded(
            child: GridView.builder(
              itemCount: myMeals.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blueAccent,
                  elevation: 2,
                  child: Column(
                    children: [
                      Text("${myMeals[index].name}"),
                      Text("${myMeals[index].description}"),
                      Text("${myMeals[index].price}"),
                      Text("${myMeals[index].image}"),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (Context) => addScreen()),
          );
          getMeals();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
