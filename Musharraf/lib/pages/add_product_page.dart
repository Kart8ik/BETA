import 'package:beta/widgets/drop_down_btn.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';



class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product'),),
      body:  SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Add New Product", style:TextStyle(fontSize: 30, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: Text('Product Name'),
                  hintText: "Enter your product name",
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  label: Text('Product Description'),
                  hintText: "Enter your product Description",

                ),
                maxLines: 4,
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  label: Text('Add Image URL'),
                  hintText: "Image URL",
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  label: Text('ProductPrice'),
                  hintText: "Enter your product price",
                ),
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Flexible(child: DropDownBtn(items: ["Cat1","Cat2",'Cat3'],selectedItemText: "Category",)),
                  Flexible(child: DropDownBtn(items: ["Brand1","Brand2",'Brand3'],selectedItemText: 'Brand',)),

                ],
              ),
              SizedBox(height: 10,),
              Text('Offer Product?',style: TextStyle(fontSize: 18),),
              DropDownBtn(items: ["Puma",'Nike','Adidas'],selectedItemText: 'Company',),





            ],
          ),
        ),
      ),
    );
  }
}
