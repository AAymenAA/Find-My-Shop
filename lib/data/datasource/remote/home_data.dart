import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class HomeData {

  Crud crud ;

  HomeData(this.crud);

  getData(int id)async{
    var response = await  crud.postData(AppLink.home, {"id" : id.toString()});
    return response.fold((l) => l, (r) => r);
  }

}