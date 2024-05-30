import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class CheckoutData {

  Crud crud ;

  CheckoutData(this.crud);

  checkout(Map data)async{
    var response = await  crud.postData(AppLink.checkout, data);
    return response.fold((l) => l, (r) => r);
  }

}