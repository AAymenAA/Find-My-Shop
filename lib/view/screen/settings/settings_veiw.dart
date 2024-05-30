import 'package:find_my_shop/controller/settings/settings_controller.dart';
import 'package:find_my_shop/core/shared/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController controller = Get.put(SettingsController());
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [


                CustomAppBar1(),




                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Row(
                    children: [
                      Text("Account",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),


                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        onTap: (){

                        },
                        title: Text("your informaiton"),
                        trailing: Icon(Icons.exit_to_app),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Row(
                    children: [
                      Text("Activitis",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),


                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: (){

                        },
                        title: Text("favorite"),
                        trailing: Icon(Icons.exit_to_app),
                      ),
                      ListTile(
                        onTap: (){
                          controller.toOrders();
                        },
                        title: Text("your Oredrs"),
                        trailing: Icon(Icons.exit_to_app),
                      ),
                      ListTile(
                        onTap: (){

                        },
                        title: Text("favorite"),
                        trailing: Icon(Icons.exit_to_app),

                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Row(
                    children: [
                      Text("Additinal",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),


                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: (){

                        },
                        title: Text("about us"),
                        trailing: Icon(Icons.exit_to_app),
                      ),
                      ListTile(
                        onTap: (){

                        },
                        title: Text("contact us"),
                        trailing: Icon(Icons.exit_to_app),
                      ),
                      ListTile(
                        onTap: (){
                          controller.loguot();
                        },
                        title: Text("log out"),
                        trailing: Icon(Icons.exit_to_app),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),





        ],
      )
    );
  }
}
