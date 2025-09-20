import 'package:json_annotation/json_annotation.dart';
part 'categories_response_model.g.dart';
@JsonSerializable()
class CategoriesResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;
  @JsonKey(name: "links")
  final Links? links;
  @JsonKey(name: "meta")
  final Meta? meta;
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "message")
  final String? message;

  CategoriesResponseModel({
    this.data,
    this.links,
    this.meta,
    this.status,
    this.message,
  });

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) => _$CategoriesResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "media")
  final String? media;

  Datum({
    this.id,
    this.name,
    this.description,
    this.media,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Links {
  @JsonKey(name: "first")
  final String? first;
  @JsonKey(name: "last")
  final String? last;
  @JsonKey(name: "prev")
  final dynamic prev;
  @JsonKey(name: "next")
  final dynamic next;

  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Meta {
  @JsonKey(name: "current_page")
  final int? currentPage;
  @JsonKey(name: "from")
  final int? from;
  @JsonKey(name: "last_page")
  final int? lastPage;
  @JsonKey(name: "links")
  final List<Link>? links;
  @JsonKey(name: "path")
  final String? path;
  @JsonKey(name: "per_page")
  final int? perPage;
  @JsonKey(name: "to")
  final int? to;
  @JsonKey(name: "total")
  final int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class Link {
  @JsonKey(name: "url")
  final String? url;
  @JsonKey(name: "label")
  final String? label;
  @JsonKey(name: "active")
  final bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);

  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
