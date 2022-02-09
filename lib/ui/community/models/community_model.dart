class CommunityModel {
  int? id;
  String? name;
  double? lat;
  double? lng;
  int? participants;
  double? radius;
  String? adsPrice;
  String? createdAt;

  CommunityModel(
      {this.id,
        this.name,
        this.lat,
        this.lng,
        this.participants,
        this.radius,
        this.adsPrice,
        this.createdAt});

  CommunityModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lat = json['lat'] != null ? double.parse(json['lat'].toString()) : null;
    lng = json['lng'] != null ? double.parse(json['lng'].toString()) : null;
    participants = json['participants'];
    radius = double.parse(json['radius'].toString());
    adsPrice = json['ads_price'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['participants'] = this.participants;
    data['radius'] = this.radius;
    data['ads_price'] = this.adsPrice;
    data['created_at'] = this.createdAt;
    return data;
  }
}