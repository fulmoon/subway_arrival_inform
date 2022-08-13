class Arrival {
  final String trainLineNm;
  final String arvlMsg2;

  Arrival({
    required this.trainLineNm,
    required this.arvlMsg2,
  });

  factory Arrival.fromJson(Map<String, dynamic> json) {
    return Arrival(
        trainLineNm: json['trainLineNm'] as String,
        arvlMsg2: json['arvlMsg2'] as String,
    );
  }
}