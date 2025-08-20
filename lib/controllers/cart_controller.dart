import 'package:flutter/cupertino.dart';
import 'package:shop_smart/helpers/extensions.dart';

import '../models/cart_model.dart';

class CartController extends ChangeNotifier{
  List<CartModel> cartItems = [];

  bool isItemInCart(CartModel cartModel) {
    int index = cartItems.indexWhere((item) => item.id == cartModel.id);
    if (index != -1) {
      return true;
    }
    return false;
  }

  void incrementQuantity(CartModel cartModel) {
    int index = cartItems.indexWhere((item) => item.id == cartModel.id);
    if (index != -1) {
      cartItems[index] = cartItems[index].copyWith(
        quantity: cartItems[index].quantity + 1,
      );
      notifyListeners();
    }
  }
  void decrementQuantity(CartModel cartModel) {
    int index = cartItems.indexWhere((item) => item.id == cartModel.id);
    if (index != -1) {
      if(cartItems[index].quantity > 1){
        cartItems[index] = cartItems[index].copyWith(
          quantity: cartItems[index].quantity - 1,
        );
        notifyListeners();
      }else{
        removeFromCart(cartModel);
      }
    }
  }
  void addToCart(CartModel cartModel){
    cartItems.add(cartModel);
    incrementQuantity(cartModel);
  }

  void removeFromCart(CartModel cartModel){
    int index = cartItems.indexWhere((item) => item.id == cartModel.id);
    if(index != -1){
      cartItems.removeAt(index);
      notifyListeners();
    }
  }
  double getTotalPrice(){
    double total = 0.0;
    for(var item in cartItems){
      total += item.price * item.quantity;
    }
    return total;
  }

  void clearCart(BuildContext context){
    cartItems.clear();
    context.showSnackBar(text: 'Cart cleared');
    notifyListeners();
  }
}