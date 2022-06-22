import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fitness_app/models/upper_body_workout.dart';

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    required this.imagePath,
    required this.name,
    required this.instruction,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  final String imagePath, name, instruction;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  var xx = ['Chest', 'Back', 'Shoulder', 'Arms'];
  var yy = [
    "Bench press",
    "Dumbell press",
    "Dips",
    "Pull ups",
    "Deadlift",
    "Lat pulldown",
    "Seated Dumbbell Overhead Press",
    "Dumbbell Lateral Raise",
    "Incline Dumbbell Reverse Fly",
    "Hammer Curl",
    "Close Grip Bench Press",
    "EZ Bar Skullcrushers",
  ];
  var zz = [
    "assets/4050052-200.png",
    "assets/2056787-200.png",
    "assets/3461872-200.png",
    "assets/2572108-200.png",
  ];
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: xx[index],
      expandedValue: yy[index],
      imagePath: zz[index],
      instruction: '',
      name: '',
    );
  });
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final List<Item> _data = generateItems(4);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 80),
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: Column(
            children: [
              for (int i = 0; i < 4; i++)
                ListTile(
                  title: Text(item.expandedValue),
                  subtitle: const Text(
                      'To delete this panel, tap the trash can icon'),
                  trailing: const Icon(Icons.delete),
                  onTap: () {
                    setState(() {
                      _data.removeWhere(
                          (Item currentItem) => item == currentItem);
                    });
                  },
                  leading: Container(
                    child: Image.asset(item.imagePath),
                  ),
                ),
            ],
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
//          body: ListTile(
//              title: Text(item.expandedValue),
//              subtitle: Text('a'),
//              leading: Container(child: Image.asset(item.imagePath),
//)),
//              //subtitle:
//              //    const Text('To delete this panel, tap the trash can icon'),
//              //trailing: const Icon(Icons.delete),
//              ),
//          isExpanded: item.isExpanded,
//        );
//      }).toList(),
//    );
//  }
//}
