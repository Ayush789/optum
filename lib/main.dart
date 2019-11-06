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
        appBar: AppBar(
          title:
              Text("Pranav Sharma | 25 Yrs | M | 110 kg | 172cm | BMXS110052"),
        ),
        backgroundColor: customGrey,
        body: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
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
                        color: Colors.red,
                      ),
                      VitalBox(
                        Icon: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Image.asset("assets/resp.jpg"),
                        ),
                        max: 18,
                        min: 12,
                        Title: "Respiratory\nRate",
                        unit: "b/min",
                        color: Colors.blue,
                      ),
                      VitalBox(
                        Icon: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Image.asset("assets/thermometer.png"),
                        ),
                        max: 99,
                        min: 96,
                        Title: "Body\nTemprature",
                        unit: "°F",
                        color: Colors.green,
                      ),
                      VitalBox(
                        Icon: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Image.asset("assets/oxygen.png"),
                        ),
                        max: 99,
                        min: 96,
                        Title: "Oxygen\nSaturation",
                        unit: "%",
                        color: Colors.orange,
                      ),
                      VitalBox(
                        Icon: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Image.asset("assets/patient.png"),
                        ),
                        max: 24,
                        min: 8,
                        Title: "Blood Urea\nNitrogen",
                        unit: "mg/dL",
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: <Widget>[
                      Card(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Tests recommended by the Algorithm",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            TestListItem(
                              Title: "Bilirubin",
                              Date: "26 Oct 2019",
                              test: TestTile.algorec,
                              Time: "06:00",
                            ),
                            TestListItem(
                              Title: "Magnetic resonance spectroscopy",
                              Date: "26 Oct 2019",
                              test: TestTile.algorec,
                              Time: "13:00",
                            ),
                            TestListItem(
                              Title: "Functional MRI (fMRI)",
                              Date: "26 Oct 2019",
                              test: TestTile.algorec,
                              Time: "10:00",
                            ),
                            TestListItem(
                              Title: "Bilirubin",
                              Date: "26 Oct 2019",
                              test: TestTile.algorec,
                              Time: "18:00",
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Tests recommended by the Doctor",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            TestListItem(
                              Title: "CT angiography (CTA)",
                              Date: "26 Oct 2019",
                              test: TestTile.docrec,
                              Time: "07:00",
                            ),
                            TestListItem(
                              Title: "Functional MRI (fMRI)",
                              Date: "26 Oct 2019",
                              test: TestTile.docrec,
                              Time: "05:00",
                            ),
                            TestListItem(
                              Title: "Magnetic resonance spectroscopy",
                              Date: "26 Oct 2019",
                              test: TestTile.docrec,
                              Time: "10:00",
                            ),
                            TestListItem(
                              Title: "Urea",
                              Date: "26 Oct 2019",
                              test: TestTile.docrec,
                              Time: "13:00",
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Tests already done",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            TestListItem(
                              Title: "CAT Scan",
                              Date: "25 Oct 2019",
                              test: TestTile.done,
                              Time: "23:00",
                            ),
                            TestListItem(
                              Title: "Urea",
                              Date: "25 Oct 2019",
                              test: TestTile.done,
                              Time: "22:45",
                            ),
                            TestListItem(
                              Title: "Functional MRI (fMRI)",
                              Date: "25 Oct 2019",
                              test: TestTile.done,
                              Time: "21:52",
                            ),
                            TestListItem(
                              Title: "Bilirubin",
                              Date: "25 Oct 2019",
                              test: TestTile.done,
                              Time: "20:00",
                            ),
                            TestListItem(
                              Title: "Stereotactic (needle) biopsy",
                              Date: "25 Oct 2019",
                              test: TestTile.done,
                              Time: "18:45",
                            ),
                            TestListItem(
                              Title: "Functional MRI (fMRI)",
                              Date: "25 Oct 2019",
                              test: TestTile.done,
                              Time: "16:23",
                            ),
                            TestListItem(
                              Title: "Bilirubin",
                              Date: "25 Oct 2019",
                              test: TestTile.done,
                              Time: "15:10",
                            ),
                            TestListItem(
                              Title: "CT angiography (CTA)",
                              Date: "25 Oct 2019",
                              test: TestTile.done,
                              Time: "12:07",
                            ),
                            TestListItem(
                              Title: "CT angiography (CTA)",
                              Date: "24 Oct 2019",
                              test: TestTile.done,
                              Time: "23:09",
                            ),
                            TestListItem(
                              Title: "Lumbar puncture (spinal tap)",
                              Date: "24 Oct 2019",
                              test: TestTile.done,
                              Time: "19:25",
                            ),
                            TestListItem(
                              Title: "Lumbar puncture (spinal tap)",
                              Date: "24 Oct 2019",
                              test: TestTile.done,
                              Time: "18:00",
                            ),
                            TestListItem(
                              Title: "Magnetic resonance spectroscopy",
                              Date: "24 Oct 2019",
                              test: TestTile.done,
                              Time: "16:05",
                            ),
                            TestListItem(
                              Title: "Stereotactic (needle) biopsy",
                              Date: "24 Oct 2019",
                              test: TestTile.done,
                              Time: "08:07",
                            ),
                            TestListItem(
                              Title: "Magnetic resonance spectroscopy",
                              Date: "24 Oct 2019",
                              test: TestTile.done,
                              Time: "07:53",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                child: ListView(
                  children: <Widget>[
                    ReportTile(
                      Title: "CAT Scan-25|10|19-23:00",
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
                    ReportTile(
                      Title: "Urea Report-25|10|19-22:45",
                      data: [8, 13, 10, 15, 18],
                      min: 7,
                      max: 20,
                      Result: Container(
                        child: Text("Blood Urea was found to be 25mg/dL"),
                      ),
                      Report: Image.asset("assets/urea.png")
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
  Color color;

  VitalBox({
    @required this.Icon,
    @required this.max,
    @required this.min,
    @required this.Title,
    @required this.unit,
    @required this.color,
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
      50,
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
//        print(data);
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
        color: widget.color,
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
                          max: widget.max,
                          min: widget.min,
                          width: 300,
                          height: 150,
                          color: widget.color,
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
          Icon(
            Icons.check_box,
            color: (test == TestTile.algorec)
                ? Colors.grey
                : (test == TestTile.docrec) ? Colors.red : Colors.green,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: (test == TestTile.algorec)
                    ? Colors.grey
                    : (test == TestTile.docrec) ? Colors.red : Colors.green,
              ),
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
  Color color;

  Chart({
    @required this.data,
    @required this.min,
    @required this.max,
    this.width = 450,
    this.height = 200,
    this.color = Colors.blue,
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
              stroke: PaintOptions.stroke(color: color, strokeWidth: 3.0)),
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
