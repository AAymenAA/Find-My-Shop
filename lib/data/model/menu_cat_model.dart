class MenuCatModel {
  int? menuCatId;
  String? menuCatName;
  String? menuCatNameFr;
  String? menuCatNameEn;
  String? menuCatImage;
  String? menuCatDatetime;
  int? menuCatShop;

  MenuCatModel(
      {this.menuCatId,
        this.menuCatName,
        this.menuCatNameFr,
        this.menuCatNameEn,
        this.menuCatImage,
        this.menuCatDatetime,
        this.menuCatShop});

  MenuCatModel.fromJson(Map<String, dynamic> json) {
    menuCatId = json['menu_cat_id'];
    menuCatName = json['menu_cat_name'];
    menuCatNameFr = json['menu_cat_name_fr'];
    menuCatNameEn = json['menu_cat_name_en'];
    menuCatImage = json['menu_cat_image'];
    menuCatDatetime = json['menu_cat_datetime'];
    menuCatShop = json['menu_cat_shop'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['menu_cat_id'] = this.menuCatId;
    data['menu_cat_name'] = this.menuCatName;
    data['menu_cat_name_fr'] = this.menuCatNameFr;
    data['menu_cat_name_en'] = this.menuCatNameEn;
    data['menu_cat_image'] = this.menuCatImage;
    data['menu_cat_datetime'] = this.menuCatDatetime;
    data['menu_cat_shop'] = this.menuCatShop;
    return data;
  }
}
