import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class ShopsData {

  Crud crud ;

  ShopsData(this.crud);

  getData(int id, String menu_cat_name)async{
    var response = await  crud.postData(AppLink.shops, {"id": id.toString(),"menu_cat_name":menu_cat_name});
    return response.fold((l) => l, (r) => r);
  }

}