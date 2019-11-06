import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fcharts/fcharts.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Color customGrey = Color(0xFF3D3D3D);

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Fira'),
      home: Scaffold(
        backgroundColor: customGrey,
        body: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        VitalBox(
                          Icon: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Image.asset("assets/heartbeat.png"),
                          ),
                          max: 72,
                          min: 60,
                          Title: "Heart Rate",
                          unit: "bpm",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: customGrey,
                child: ListView(
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Text("Tests recommended by the Algorithm"),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.algorec,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.algorec,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.algorec,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.algorec,
                            Time: "23:00",
                          ),
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Text("Tests recommended by the Doctor"),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.docrec,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.docrec,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.docrec,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.docrec,
                            Time: "23:00",
                          ),
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Text("Tests already done"),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                          TestListItem(
                            Title: "Urea",
                            Date: "6 Nov 2019",
                            test: TestTile.done,
                            Time: "23:00",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                child: ListView(
                  children: <Widget>[
                    ReportTile(
                      Title: "CAT Scan",
                      data: [89, 85, 84, 60, 45],
                      min: 55,
                      max: 90,
                      Result: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Tumour Size: Shrunk by ",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.black),
                                ),
                                TextSpan(
                                  text: "15%",
                                  style: TextStyle(
                                      fontSize: 22.0, color: Colors.redAccent),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Report: Row(
                        children: <Widget>[
                          Flexible(
                              child: Image.asset(
                            "assets/Picture2.png",
                            fit: BoxFit.contain,
                          )),
                          Flexible(
                              child: Image.asset(
                            "assets/Picture1.jpg",
                            fit: BoxFit.contain,
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VitalBox extends StatefulWidget {
  String Title, unit;
  int min, max;
  Widget Icon;

  VitalBox({
    this.Icon,
    this.max,
    this.min,
    this.Title,
    this.unit,
  });

  @override
  _VitalBoxState createState() => _VitalBoxState();
}

class _VitalBoxState extends State<VitalBox> {
  int val;
  List<int> data;

  @override
  void initState() {
    data = List<int>.generate(
      10,
      (i) => Random().nextInt(widget.max - widget.min) + widget.min,
    );
    val = data[data.length - 1];
//    print("Starting Data");
//    print(data);
    super.initState();
  }

  void rng() {
    Future.delayed(Duration(seconds: 1)).then((x) {
      setState(() {
        data.add(Random().nextInt(widget.max - widget.min) + widget.min);
        data.removeAt(0);
        val = data[data.length - 1];
        print(data);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    rng();
    return Container(
      height: 302,
      width: 510,
      child: Card(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: <Widget>[
                Container(
                  height: 120,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text(
                            widget.Title,
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.black,
                              fontFamily: 'Fira',
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: widget.Icon),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Center(
                          child: Text(
                            "$val ${widget.unit}",
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Chart(
                          data: data,
                          max: 72,
                          min: 60,
                          width: 300,
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TestListItem extends StatelessWidget {
  String Title, Date, Time;
  TestTile test;

  TestListItem({
    this.Title,
    this.Date,
    this.Time,
    this.test,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Checkbox(
            value: !(test == TestTile.algorec),
            checkColor: (test == TestTile.algorec)
                ? Colors.grey
                : (test == TestTile.docrec) ? Colors.red : Colors.green,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: Title + "  "),
                TextSpan(text: Date + "  "),
                TextSpan(text: Time + "  "),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

enum TestTile {
  algorec,
  docrec,
  done,
}

class Chart extends StatelessWidget {
  List<int> data;
  int min, max, width, height;

  List<List<int>> d = [];

  Chart({
    @required this.data,
    @required this.min,
    @required this.max,
    this.width = 450,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < data.length; i++) {
      d.add([i, data[i]]);
    }
    return Container(
      width: width.toDouble(),
      height: height.toDouble(),
      child: LineChart(
        lines: [
          Line(
              data: d,
              xFn: (d) => d[0],
              yFn: (d) => d[1],
              marker: MarkerOptions(size: 0),
              xAxis: ChartAxis(tickGenerator: EmptyTickGenerator()),
              yAxis: ChartAxis(
                  tickGenerator: EmptyTickGenerator(), span: IntSpan(min, max)),
              stroke:
                  PaintOptions.stroke(color: Colors.blue, strokeWidth: 3.0)),
        ],
      ),
    );
  }
}

class ReportTile extends StatefulWidget {
  String Title;
  List<int> data;
  int max, min;

  Widget Report, Result;

  ReportTile({
    @required this.Title,
    @required this.min,
    @required this.data,
    @required this.max,
    @required this.Result,
    @required this.Report,
  });

  @override
  _ReportTileState createState() => _ReportTileState();
}

class _ReportTileState extends State<ReportTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.Title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                ],
              ),
              color: Colors.black,
            ),
            widget.Report,
            widget.Result,
            Chart(
              data: widget.data,
              max: widget.max,
              min: widget.min,
            ),
          ],
        ),
      ),
    );
  }
}
