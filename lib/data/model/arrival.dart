import 'package:json_annotation/json_annotation.dart';

part 'arrival.g.dart';

@JsonSerializable(explicitToJson: true)
class Arrival {
  final String trainLineNm;
  final String arrivalMassage;

  Arrival({
    required this.trainLineNm,
    required this.arrivalMassage,
});

  factory Arrival.fromJson(Map<String, dynamic> json) => _$ArrivalFromJson(json);

  Map<String, dynamic> toJson() => _$ArrivalToJson(this);
}