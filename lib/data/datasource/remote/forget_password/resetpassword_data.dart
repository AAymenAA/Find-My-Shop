import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class ResetPasswordData {

  Crud crud ;

  ResetPasswordData(this.crud);

  postData(String email ,String password)async{
    var response = await  crud.postData(AppLink.resetpassword, {
      "email" : email ,
      "password" : password ,
    });
    return response.fold((l) => l, (r) => r);
  }

}