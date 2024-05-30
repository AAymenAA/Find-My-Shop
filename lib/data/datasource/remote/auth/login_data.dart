import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class LoginData {

  Crud crud ;

  LoginData(this.crud);

  postData(String email ,String password)async{
    var response = await  crud.postData(AppLink.login, {
      "email" : email ,
      "password" : password ,
    });
    return response.fold((l) => l, (r) => r);
  }

}