// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.data,
    required this.meta,
  });

  List<Datum> data;
  Meta meta;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.text,
  });

  String id;
  String text;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
      };
}

class Meta {
  Meta({
    required this.resultCount,
    required this.newestId,
    required this.oldestId,
    required this.nextToken,
  });

  int resultCount;
  String newestId;
  String oldestId;
  String nextToken;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        resultCount: json["result_count"],
        newestId: json["newest_id"],
        oldestId: json["oldest_id"],
        nextToken: json["next_token"],
      );

  Map<String, dynamic> toJson() => {
        "result_count": resultCount,
        "newest_id": newestId,
        "oldest_id": oldestId,
        "next_token": nextToken,
      };
}
