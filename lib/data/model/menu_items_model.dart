class MenuItemsModel {
  int? menuId;
  String? menuName;
  String? menuImage;
  int? menuPrice;
  String? menuDatetime;
  int? menuShop;
  String? menuMenucat;

  MenuItemsModel(
      {this.menuId,
        this.menuName,
        this.menuImage,
        this.menuPrice,
        this.menuDatetime,
        this.menuShop,
        this.menuMenucat});

  MenuItemsModel.fromJson(Map<String, dynamic> json) {
    menuId = json['menu_id'];
    menuName = json['menu_name'];
    menuImage = json['menu_image'];
    menuPrice = json['menu_price'];
    menuDatetime = json['menu_datetime'];
    menuShop = json['menu_shop'];
    menuMenucat = json['menu_menucat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['menu_id'] = this.menuId;
    data['menu_name'] = this.menuName;
    data['menu_image'] = this.menuImage;
    data['menu_price'] = this.menuPrice;
    data['menu_datetime'] = this.menuDatetime;
    data['menu_shop'] = this.menuShop;
    data['menu_menucat'] = this.menuMenucat;
    return data;
  }
}
