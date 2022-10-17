import 'package:get/get.dart';
import 'package:zeus_app/manClothes/sominam.dart';
import 'package:zeus_app/page/cartList.dart/cart_list_model.dart';

class CartController extends GetxController {
  var numOfItem = 1.obs;
  var total = 0.obs;
  var cartItems = <CartListModel>[].obs;
  var totalAmount = 0.obs;
  void removeItem() {
    if (numOfItem.value >= 0) {
      numOfItem.value--;
    }
  }

  void addItem() {
    numOfItem.value++;
  }

  void addItemInCart(SoMiNam aoSoMi) {
      //Update the value of quantity just 1 item selected
    final index = cartItems.indexWhere((element) => element.product == aoSoMi);
    if (index > 0) {
      cartItems[index] = CartListModel(
          product: aoSoMi,
          quantity: (numOfItem.value + cartItems[index].quantity));
    } else {
      cartItems.add(CartListModel(product: aoSoMi, quantity: numOfItem.value));
    }

    total.value = total.value + numOfItem.value;
    numOfItem.value = 1;
    totalAmount.value =
        totalAmount.value + ((aoSoMi.price as int) * numOfItem.value);
   
  }

  void initQuantity() {
    numOfItem.value = 1;
  }
}
