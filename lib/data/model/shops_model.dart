class ShopsModel {
  int? shopsId;
  String? shopsName;
  String? shopsNameFr;
  String? shopsNameAr;
  String? shopsImage;
  int? shopsActive;
  int? shopsDelivery;
  int? shopsRate;
  int? shopsReviewCount;
  String? shopsLocation;
  String? shopsDatetime;
  int? shopsCat;

  ShopsModel(
      {this.shopsId,
        this.shopsName,
        this.shopsNameFr,
        this.shopsNameAr,
        this.shopsImage,
        this.shopsActive,
        this.shopsDelivery,
        this.shopsRate,
        this.shopsReviewCount,
        this.shopsLocation,
        this.shopsDatetime,
        this.shopsCat});

  ShopsModel.fromJson(Map<String, dynamic> json) {
    shopsId = json['shops_id'];
    shopsName = json['shops_name'];
    shopsNameFr = json['shops_name_fr'];
    shopsNameAr = json['shops_name_ar'];
    shopsImage = json['shops_image'];
    shopsActive = json['shops_active'];
    shopsDelivery = json['shops_delivery'];
    shopsRate = json['shops_rate'];
    shopsReviewCount = json['shops_review_count'];
    shopsLocation = json['shops_location'];
    shopsDatetime = json['shops_datetime'];
    shopsCat = json['shops_cat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shops_id'] = this.shopsId;
    data['shops_name'] = this.shopsName;
    data['shops_name_fr'] = this.shopsNameFr;
    data['shops_name_ar'] = this.shopsNameAr;
    data['shops_image'] = this.shopsImage;
    data['shops_active'] = this.shopsActive;
    data['shops_delivery'] = this.shopsDelivery;
    data['shops_rate'] = this.shopsRate;
    data['shops_review_count'] = this.shopsReviewCount;
    data['shops_location'] = this.shopsLocation;
    data['shops_datetime'] = this.shopsDatetime;
    data['shops_cat'] = this.shopsCat;
    return data;
  }
}
