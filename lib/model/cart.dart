import 'package:flutter/cupertino.dart';
import 'package:providerpattern/model/item.dart';

class Cart extends ChangeNotifier {

  List<Item> _items=[];
  double totalPrice=0.0;

  //Cart({this._items,this.totalPrice});

  void addItem(Item item){
    _items.add(item);
    totalPrice += item.price;
    notifyListeners();
  }

  void removeItem(Item item){
    totalPrice += item.price;
    _items.remove(item);
    notifyListeners();
  }
int get count{
  return _items.length;
}

List<Item> get items{
    return  _items;
}
}