import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class SignupData {

  Crud crud ;

  SignupData(this.crud);

  postData(String username ,String phone ,String email ,String password)async{
    var response = await  crud.postData(AppLink.signup, {
      "username" : username ,
      "phone" : phone ,
      "email" : email ,
      "password" : password ,
    });
    return response.fold((l) => l, (r) => r);
  }

}