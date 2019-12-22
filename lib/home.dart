import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/people.dart';
import 'provider/data_provider.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (_, dataProvider, __) => Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            dataProvider.addDataToList(
              People(
                  color: Colors.redAccent,
                  name: "45345345",
                  description: "adsfadsfasdfsdafs"),
            );
          },
        ),
        body: ListView.builder(
          itemCount: dataProvider.getDataListPeople.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: dataProvider.getDataListPeople[index].color,
              ),
              title: Text(dataProvider.getDataListPeople[index].name),
              subtitle: Text(dataProvider.getDataListPeople[index].description),
            );
          },
        ),
      ),
    );
  }
}
