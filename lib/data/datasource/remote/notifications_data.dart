import 'package:find_my_shop/core/class/crud.dart';
import 'package:find_my_shop/link_api.dart';

class NotificationsData {

  Crud crud ;

  NotificationsData(this.crud);

  getData(String id)async{
    var response = await  crud.postData(AppLink.notoficationveiw, {"userid": id});
    return response.fold((l) => l, (r) => r);
  }

}