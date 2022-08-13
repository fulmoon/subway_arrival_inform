import 'dart:convert';

import 'package:subway_arrival_inform/arrival.dart';
import 'package:http/http.dart' as http;

class ArrivalApi{
  Future<List<Arrival>> getArrivals(String query) async {
    Uri url = Uri.parse('http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/$query');

    http.Response response = await http.get(url);

    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode((jsonString));
    Iterable arrivals = json['arrivals'];
    return arrivals.map((e) => Arrival.fromJson(e)).toList();
  }
}