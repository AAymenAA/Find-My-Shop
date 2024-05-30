import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class CartData {

  Crud crud;

  CartData(this.crud);

  getData(String userid) async {
    var response = await crud.postData(AppLink.cartview, {"userid": userid});
    return response.fold((l) => l, (r) => r);
  }

  addCart(String userid, String menuitemid, String menuitemcout,
      String menuitemprice) async {
    var response = await crud.postData(AppLink.cartadd, {
      "userid": userid,
      "menuitemid": menuitemid,
      "menuitemcout": menuitemcout,
      "menuitemprice": menuitemprice
    });
    return response.fold((l) => l, (r) => r);
  }

  removeCart(String userid, String menuitemid, String menuitemcout,
      String menuitemprice) async {
    var response = await crud.postData(AppLink.cartdelete, {
      "userid": userid,
      "menuitemid": menuitemid,
      "menuitemcout": menuitemcout,
      "menuitemprice": menuitemprice
    });
    return response.fold((l) => l, (r) => r);
  }

  trashCart(String userid, String menuitemid) async {
    var response = await crud.postData(AppLink.carttrash, {
      "userid": userid,
      "menuitemid": menuitemid,
    });
    return response.fold((l) => l, (r) => r);
  }


}

