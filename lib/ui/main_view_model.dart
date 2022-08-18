import 'package:flutter/material.dart';
import 'package:subway_arrival_inform/data/model/arrival.dart';
import 'package:subway_arrival_inform/data/repository/arrival_repository.dart';

class MainViewModel extends ChangeNotifier{
  //데이터 저장소
  final _arrivalRepository = ArrivalRepository();

  //데이터
  List<Arrival> arrivals = [];

  //로딩
  bool isLoading = false;


  MainViewModel() {
    fetchArrivals('서울');
  }

  Future<void> fetchArrivals(String query) async {
    isLoading = true;
    notifyListeners();

    arrivals = await _arrivalRepository.getArrivals(query);
    isLoading = false;
    notifyListeners();
  }
}