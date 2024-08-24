import 'package:beta/pages/add_product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FootWare Admin"),),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,text){
            return ListTile(
              title: Text('Title'),
              subtitle: Text('Price: 100'),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  print("Object Deleted");
                },
            ),
            );
    }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(AddProductPage());
      },
        child: Icon(Icons.add),),
    );
  }
}
