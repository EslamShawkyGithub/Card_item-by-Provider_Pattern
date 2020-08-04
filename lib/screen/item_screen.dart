import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpattern/model/cart.dart';

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, cart, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Total: ${cart.totalPrice}'),
          centerTitle: true,
        ),
        body: cart.items.length == 0
            ? Center(
                child: Text('no items'),
              )
            : ListView.builder(
                itemCount: cart.items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(cart.items[index].title),
                    subtitle: Text(cart.items[index].price.toString()),
                    trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          cart.removeItem(cart.items[index]);
                        }),
                  );
                }),
      );
    });
  }
}
