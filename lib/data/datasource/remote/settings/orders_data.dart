import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class OrdersData {

  Crud crud ;

  OrdersData(this.crud);

  getData(String userid, String statorder)async{
    var response = await  crud.postData(AppLink.ordersveiw, {"userid": userid,"statorder":statorder});
    return response.fold((l) => l, (r) => r);
  }

}