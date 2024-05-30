class OrdersModel {
  int? ordersId;
  int? ordersUserid;
  double? ordersAddresslat;
  double? ordersAddresslanth;
  int? ordersType;
  int? ordersPricedelivery;
  int? ordersPrice;
  int? ordersCoupon;
  String? ordersDatetime;
  int? ordersPymenttype;
  int? ordersStat;
  int? ordersShopid;
  int? ordersDileveryid;
  String? ordersClientname;

  OrdersModel(
      {this.ordersId,
        this.ordersUserid,
        this.ordersAddresslat,
        this.ordersAddresslanth,
        this.ordersType,
        this.ordersPricedelivery,
        this.ordersPrice,
        this.ordersCoupon,
        this.ordersDatetime,
        this.ordersPymenttype,
        this.ordersStat,
        this.ordersShopid,
        this.ordersDileveryid,
        this.ordersClientname});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    ordersId = json['orders_id'];
    ordersUserid = json['orders_userid'];
    ordersAddresslat = json['orders_addresslat'];
    ordersAddresslanth = json['orders_addresslanth'];
    ordersType = json['orders_type'];
    ordersPricedelivery = json['orders_pricedelivery'];
    ordersPrice = json['orders_price'];
    ordersCoupon = json['orders_coupon'];
    ordersDatetime = json['orders_datetime'];
    ordersPymenttype = json['orders_pymenttype'];
    ordersStat = json['orders_stat'];
    ordersShopid = json['orders_shopid'];
    ordersDileveryid = json['orders_dileveryid'];
    ordersClientname = json['orders_clientname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orders_id'] = this.ordersId;
    data['orders_userid'] = this.ordersUserid;
    data['orders_addresslat'] = this.ordersAddresslat;
    data['orders_addresslanth'] = this.ordersAddresslanth;
    data['orders_type'] = this.ordersType;
    data['orders_pricedelivery'] = this.ordersPricedelivery;
    data['orders_price'] = this.ordersPrice;
    data['orders_coupon'] = this.ordersCoupon;
    data['orders_datetime'] = this.ordersDatetime;
    data['orders_pymenttype'] = this.ordersPymenttype;
    data['orders_stat'] = this.ordersStat;
    data['orders_shopid'] = this.ordersShopid;
    data['orders_dileveryid'] = this.ordersDileveryid;
    data['orders_clientname'] = this.ordersClientname;
    return data;
  }
}
