import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class CheckEmailData {

  Crud crud ;

  CheckEmailData(this.crud);

  postData(String email )async{
    var response = await  crud.postData(AppLink.checkemail, {
      "email" : email ,
    });
    return response.fold((l) => l, (r) => r);
  }

}