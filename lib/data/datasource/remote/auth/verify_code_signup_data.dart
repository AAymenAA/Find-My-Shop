import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class VerifycodeSignupData {

  Crud crud ;

  VerifycodeSignupData(this.crud);

  postData(String email ,String verifycode)async{
    var response = await  crud.postData(AppLink.verifycodesignup, {
      "email" : email ,
      "verifycode" : verifycode ,
    });
    return response.fold((l) => l, (r) => r);
  }

}