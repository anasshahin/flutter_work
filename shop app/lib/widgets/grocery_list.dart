import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/data/categories.dart';

import '../models/category.dart';
import '../models/grocery_item.dart';

import 'new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  List<GroceryItem> groceryItems = [];
  bool _isLoading = true;
  String? _error;

  _loadItems() async {
    const String urlString =
        "https://my-bees-40070-default-rtdb.firebaseio.com/shopping_list.json";
    final Uri url = Uri.parse(urlString);
    try{
    http.Response res = await http.get(url);
    log(res.statusCode.toString());
    if (res.statusCode >= 400) {
      setState(() {
        _error = 'Failed to fetch data. Please try again later';
      });
      return;
    }
    if(res.body=='null') {
      setState(() {
        _isLoading =false;

      });
      return;
    }

    log(res.body);
    final Map<String, dynamic> loadedData = json.decode(res.body);
    final List<GroceryItem> loadedItems = [];

    for (var items in loadedData.entries) {
      final Category category = categories.entries
          .firstWhere(
              (element) => element.value.title == items.value['category'])
          .value;
      loadedItems.add(GroceryItem(
        id: items.key,
        name: items.value['name'],
        quantity: items.value['quantity'].toInt(),
        category: category,
      ));
    }

    setState(() {
      groceryItems = loadedItems;
      _isLoading = false;
    });
    }catch(err){
      setState(() {
        _error = 'Failed to fetch data. Please try again later';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: CircularProgressIndicator(),
    );
    if (!_isLoading) {
      content = Center(
        child: Text(
          'No Item added yet.',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      );
    }
    if (groceryItems.isNotEmpty) {
      content = ListView.builder(
        itemBuilder: (ctx, index) {
          return Dismissible(
            key: ValueKey(groceryItems[index].id),
            onDismissed: (_) {
              _deleteItem(groceryItems[index]);
            },
            child: ListTile(
              title: Text(groceryItems[index].name),
              leading: Container(
                height: 25,
                width: 25,
                color: groceryItems[index].category.color,
              ),
              trailing: Text(groceryItems[index].quantity.toString()),
            ),
          );
        },
        itemCount: groceryItems.length,
      );
    }
    if (_error != null) {
      content = Center(
        child: Text(
          _error!,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      );
    }
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: _addItems, icon: const Icon(Icons.add))
          ],
          title: const Text('GroceryList'),
        ),
        body: content);
  }

  _addItems() async {
    final newItem = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => const NewItem()));
    /* .then((val) {
      if (val == null) return;
      setState(
        () => groceryItems.add(val),d
      );
    });*/
    if (newItem == null) return;
    setState(() {
      groceryItems.add(newItem);
    });
  }

  _deleteItem(GroceryItem grocery)async {
    final index = groceryItems.indexOf(grocery);
    setState(() {

      groceryItems.remove(grocery);
    });
     String urlString =
        "https://my-bees-40070-default-rtdb.firebaseio.com/shopping_list/${grocery.id}.json";
    final Uri url = Uri.parse(urlString);
 var res= await http.delete(url);
 if(res.statusCode >= 400){
   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('can not delete item')));
   setState(() {
     groceryItems.insert(index, grocery);

   });
 }

  }
}
