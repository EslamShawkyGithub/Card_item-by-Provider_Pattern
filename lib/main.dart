import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpattern/model/cart.dart';
import 'package:providerpattern/screen/cart_item_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Cart(),
      child: ProviderApp(),
    ),
  );
}

class ProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider App',
      debugShowCheckedModeBanner: false,
      home: CartItemScreen(),
    );
  }
}
