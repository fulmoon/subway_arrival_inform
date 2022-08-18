import 'package:json_annotation/json_annotation.dart';

part 'arrival.g.dart';

@JsonSerializable(explicitToJson: true)
class Arrival {
  final String trainLineNm;
  final String arvlMsg2;

  Arrival({
    required this.trainLineNm,
    required this.arvlMsg2,
});

  factory Arrival.fromJson(Map<String, dynamic> json) => _$ArrivalFromJson(json);

  Map<String, dynamic> toJson() => _$ArrivalToJson(this);
}