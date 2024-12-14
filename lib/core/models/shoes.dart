class Shoes {
  int? id;
  String? name;
  int? price;
  String? image;
  String? description;
  int? quantity;
  Rating? rating;

  Shoes({
    this.id,
    this.name,
    this.price,
    this.image,
    this.description,
    this.quantity,
    this.rating,
  });

  Shoes.fromJson(Map<String, dynamic> json) {
    id = _parseInt(json['id']);
    name = json['name'];
    price = _parseInt(json['price']);
    image = json['image'];
    description = json['description'];
    quantity = _parseInt(json['quantity']);
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['image'] = image;
    data['description'] = description;
    data['quantity'] = quantity;
    if (rating != null) {
      data['rating'] = rating!.toJson();
    }
    return data;
  }

  int? _parseInt(dynamic value) {
    if (value is int) return value;
    if (value is String) return int.tryParse(value);
    return null;
  }
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate']?.toDouble(); 
    count = _parseInt(json['count']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rate'] = rate;
    data['count'] = count;
    return data;
  }

  int? _parseInt(dynamic value) {
    if (value is int) return value;
    if (value is String) return int.tryParse(value);
    return null;
  }
}
