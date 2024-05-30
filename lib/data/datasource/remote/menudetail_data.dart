import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class MenuDetailData {

  Crud crud ;

  MenuDetailData(this.crud);

  additem(String userid, String menuitemid, String menuitemprice, String menuitemname, String menuitemimg)async{
    var response = await  crud.postData(AppLink.menudetails, {
      "userid" : userid,
      "menuitemid" : menuitemid,
      "menuitemprice" : menuitemprice,
      "menuitemname" : menuitemname,
      "menuitemimg" : menuitemimg
    });
    return response.fold((l) => l, (r) => r);
  }


}
