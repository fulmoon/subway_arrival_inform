import 'package:flutter/material.dart';
import 'package:subway_arrival_inform/arrival.dart';

class SubwayArrivalInform extends StatefulWidget {
  const SubwayArrivalInform({Key? key}) : super(key: key);

  @override
  State<SubwayArrivalInform> createState() => _SubwayArrivalInformState();
}

class _SubwayArrivalInformState extends State<SubwayArrivalInform> {
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> arrivals = [
    {'trainLineNm': '광운대행 - 화서방면', 'arvlMsg2': '수원 도착',},
    {'trainLineNm': '왕십리행 - 매교방면', 'arvlMsg2': '수원 도착',},
    {'trainLineNm': '청량리행 - 화서방면', 'arvlMsg2': '8번째 전역 도착',},
  ];

  String _query = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '지하철 실시간 도착 정보',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                labelText: 'Search',
                suffixIcon: IconButton(
                  onPressed: () {
                    //print('클릭 ${_controller.text}');
                    setState(() {
                      _query = _controller.text;
                    });
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: arrivals.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${arrivals[index]['trainLineNm']}, ",
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            Text(arrivals[index]["arvlMsg2"],
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          ],

                        ),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
