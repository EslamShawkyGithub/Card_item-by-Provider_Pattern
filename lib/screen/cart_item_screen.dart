import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpattern/model/cart.dart';
import 'package:providerpattern/model/item.dart';
import 'package:providerpattern/screen/item_screen.dart';

class CartItemScreen extends StatefulWidget {
  @override
  _CartItemScreenState createState() => _CartItemScreenState();
}

class _CartItemScreenState extends State<CartItemScreen> {
  List<Item> items = [
    Item(title: 'Lab top', price: 1200.0),
    Item(title: 'Play station', price: 1500.0),
    Item(title: 'Mac book', price: 1800.0),
    Item(title: 'Lab top', price: 1200.0),
    Item(title: 'Samsung LCD', price: 1900.0),
    Item(title: 'Iphone x10', price: 1600.0),
    Item(title: 'Mac book', price: 1800.0),
    Item(title: 'Samsung LCD', price: 1900.0),
    Item(title: 'Mac book', price: 1800.0),
    Item(title: 'xBOX', price: 1700.0),
    Item(title: 'Lab top', price: 1200.0),
    Item(title: 'Samsung LCD', price: 1900.0),
    Item(title: 'Lab top', price: 1400.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('items'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ItemScreen()));
                  }),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 16.0),
                child: Text(cart.count.toString()),
              ),
            ],
          ),
          body: Container(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index].title),
                    subtitle: Text('Price:${items[index].price.toString()}'),
                    trailing: IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          cart.addItem(items[index]);
                        }),
                  );
                }),
          ),
        );
      },
    );
  }
}
