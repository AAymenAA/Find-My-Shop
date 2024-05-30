import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class DileveryData {

  Crud crud ;

  DileveryData(this.crud);

  getdileveryinfo(String orderid)async{
    var response = await  crud.postData(AppLink.getdileveryinfo, {"orderid": orderid});
    return response.fold((l) => l, (r) => r);
  }

}