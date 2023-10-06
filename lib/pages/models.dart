/// collection : {"version":"1.0","href":"http://images-api.nasa.gov/asset/as11-40-5874?api_key=Go1WLaAu5SlIMhL0bLoV6xwBkrIcgx30mDkeaYOC","items":[{"href":"http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~orig.jpg"},{"href":"http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~large.jpg"},{"href":"http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~medium.jpg"},{"href":"http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~small.jpg"},{"href":"http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~thumb.jpg"},{"href":"http://images-assets.nasa.gov/image/as11-40-5874/metadata.json"}]}

class Models {
  Models({
      Collection? collection,}){
    _collection = collection;
}

  Models.fromJson(dynamic json) {
    _collection = json['collection'] != null ? Collection.fromJson(json['collection']) : null;
  }
  Collection? _collection;
Models copyWith({  Collection? collection,
}) => Models(  collection: collection ?? _collection,
);
  Collection? get collection => _collection;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_collection != null) {
      map['collection'] = _collection?.toJson();
    }
    return map;
  }

}

/// version : "1.0"
/// href : "http://images-api.nasa.gov/asset/as11-40-5874?api_key=Go1WLaAu5SlIMhL0bLoV6xwBkrIcgx30mDkeaYOC"
/// items : [{"href":"http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~orig.jpg"},{"href":"http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~large.jpg"},{"href":"http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~medium.jpg"},{"href":"http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~small.jpg"},{"href":"http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~thumb.jpg"},{"href":"http://images-assets.nasa.gov/image/as11-40-5874/metadata.json"}]

class Collection {
  Collection({
      String? version, 
      String? href, 
      List<Items>? items,}){
    _version = version;
    _href = href;
    _items = items;
}

  Collection.fromJson(dynamic json) {
    _version = json['version'];
    _href = json['href'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }
  String? _version;
  String? _href;
  List<Items>? _items;
Collection copyWith({  String? version,
  String? href,
  List<Items>? items,
}) => Collection(  version: version ?? _version,
  href: href ?? _href,
  items: items ?? _items,
);
  String? get version => _version;
  String? get href => _href;
  List<Items>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['version'] = _version;
    map['href'] = _href;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// href : "http://images-assets.nasa.gov/image/as11-40-5874/as11-40-5874~orig.jpg"

class Items {
  Items({
      String? href,}){
    _href = href;
}

  Items.fromJson(dynamic json) {
    _href = json['href'];
  }
  String? _href;
Items copyWith({  String? href,
}) => Items(  href: href ?? _href,
);
  String? get href => _href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = _href;
    return map;
  }

}