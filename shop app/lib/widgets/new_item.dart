import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/grocery_item.dart';
import 'package:uuid/uuid.dart';
import '../data/categories.dart';
import '../models/category.dart' as cat;
import 'package:http/http.dart' as http;

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  final _formKey = GlobalKey<FormState>();
  String _itemName = "";
  double _itemQuantity = 0;
  bool _isLoading = false;
  cat.Category? _selectedCategory = categories[cat.Categories.fruit];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                onSaved: (val) {
                  _itemName = val!;
                },
                decoration: const InputDecoration(
                  labelText: "name",
                ),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value.trim().length <= 1 ||
                      value.trim().length >= 50) {
                    return "name should contain more than 1 char and less than 50 spaces does not count";
                  }
                  return null;
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      initialValue: '1',
                      onSaved: (val) => _itemQuantity = double.parse(val!),
                      decoration: const InputDecoration(
                        labelText: "Quantity",
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            double.tryParse(value) == null ||
                            double.tryParse(value)! < 1) {
                          return "Quantity must be positive and valid number";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Expanded(
                      child: DropdownButtonFormField(
                          value: _selectedCategory,
                          items: [
                            for (final category in categories.entries)
                              DropdownMenuItem(
                                  value: category.value,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 16,
                                        width: 16,
                                        color: category.value.color,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text(category.value.title)
                                    ],
                                  ))
                          ],
                          onChanged: (value) {
                            setState(() {
                              _selectedCategory = value;
                            });
                          })),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: _isLoading
                          ? null
                          : () {
                              _formKey.currentState!.reset();
                            },
                      child: const Text('Reset')),
                  TextButton(
                      onPressed: _isLoading ? null : saveItem,
                      child: _isLoading
                          ? const SizedBox(
                              height: 15,
                              width: 15,
                              child: CircularProgressIndicator(),
                            )
                          : const Text('Add item')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void saveItem() {
    _formKey.currentState!.validate();
    if (_formKey.currentState!.validate()) _formKey.currentState!.save();
    setState(() {
      _isLoading = true;

    });
    const String urlString =
        "https://my-bees-40070-default-rtdb.firebaseio.com/shopping_list.json";
    final Uri url = Uri.parse(urlString);
    http
        .post(url,
            headers: {"Content-Type": 'application/json'},
            body: json.encode({
              'name': _itemName,
              'quantity': _itemQuantity,
              'category': _selectedCategory!.title
            }))
        .then((value) {
      if (value.statusCode == 200) {
        final Map<String, dynamic> resData = json.decode(value.body);
        _isLoading = false;

        Navigator.of(context).pop(GroceryItem(
            id: resData['name'],
            name: _itemName,
            quantity: _itemQuantity.toInt(),
            category: _selectedCategory!));
      }
    });


    /*Navigator.of(context).pop(
                          GroceryItem(id: const Uuid().v4(), name: _itemName, quantity: _itemQuantity.toInt(), category: _selectedCategory!)
                        );*/
  }
}
