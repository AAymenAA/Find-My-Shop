class CartMenuItemsModl {
  int? cartId;
  int? cartMenuitemid;
  int? cartUserid;
  int? itemcount;
  String? cartMenuitemname;
  int? cartMenuitemprice;
  String? cartMenuitemimg;
  int? cartTotelitemprice;

  CartMenuItemsModl(
      {this.cartId,
        this.cartMenuitemid,
        this.cartUserid,
        this.itemcount,
        this.cartMenuitemname,
        this.cartMenuitemprice,
        this.cartMenuitemimg,
        this.cartTotelitemprice});

  CartMenuItemsModl.fromJson(Map<String, dynamic> json) {
    cartId = json['cart_id'];
    cartMenuitemid = json['cart_menuitemid'];
    cartUserid = json['cart_userid'];
    itemcount = json['itemcount'];
    cartMenuitemname = json['cart_menuitemname'];
    cartMenuitemprice = json['cart_menuitemprice'];
    cartMenuitemimg = json['cart_menuitemimg'];
    cartTotelitemprice = json['cart_totelitemprice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cart_id'] = this.cartId;
    data['cart_menuitemid'] = this.cartMenuitemid;
    data['cart_userid'] = this.cartUserid;
    data['itemcount'] = this.itemcount;
    data['cart_menuitemname'] = this.cartMenuitemname;
    data['cart_menuitemprice'] = this.cartMenuitemprice;
    data['cart_menuitemimg'] = this.cartMenuitemimg;
    data['cart_totelitemprice'] = this.cartTotelitemprice;
    return data;
  }
}
