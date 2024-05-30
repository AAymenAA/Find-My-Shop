import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class TestData {

  Crud crud ;

  TestData(this.crud);

  getData()async{
    var response = await  crud.postData(AppLink.test, {});
    return response.fold((l) => l, (r) => r);
  }

}