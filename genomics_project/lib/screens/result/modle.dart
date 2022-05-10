// To parse this JSON data, do
//
//     final result = resultFromJson(jsonString);

import 'dart:convert';

Result resultFromJson(String str) => Result.fromJson(json.decode(str));

String resultToJson(Result data) => json.encode(data.toJson());

class Result {
  Result({
    required this.result,
  });

 final String result;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    result: json["result"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
  };
}
