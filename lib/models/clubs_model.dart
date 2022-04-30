class ClubsModel {
  List<Club>? clubs;

  ClubsModel({this.clubs});

  ClubsModel.fromJson(List<dynamic> json) {
    clubs = <Club>[];
    for (var v in json) {
      clubs!.add(Club.fromJson(v));
    }
  }
}

class Club {
  String? id;
  String? name;
  String? country;
  int? value;
  String? image;
  int? europeanTitles;
  Stadium? stadium;
  Location? location;

  Club(
      {this.id,
        this.name,
        this.country,
        this.value,
        this.image,
        this.europeanTitles,
        this.stadium,
        this.location});

  Club.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    country = json['country'];
    value = json['value'];
    image = json['image'];
    europeanTitles = json['european_titles'];
    stadium =
    json['stadium'] != null ? Stadium.fromJson(json['stadium']) : null;
    location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['name'] = this.name;
    data['country'] = this.country;
    data['value'] = this.value;
    data['image'] = this.image;
    data['european_titles'] = this.europeanTitles;
    if (this.stadium != null) {
      data['stadium'] = this.stadium!.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    return data;
  }
}

class Stadium {
  int? size;
  String? name;

  Stadium({this.size, this.name});

  Stadium.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['size'] = this.size;
    data['name'] = this.name;
    return data;
  }
}

class Location {
  double? lat;
  double? lng;

  Location({this.lat, this.lng});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}
