import 'package:subway_arrival_inform/data/data_source/arrival_api.dart';
import 'package:subway_arrival_inform/data/model/arrival.dart';

class ArrivalRepository {
  final _api = ArrivalApi();

  Future<List<Arrival>> getArrivals(String query) async {
    return await _api.getArrivals(query);
  }
}