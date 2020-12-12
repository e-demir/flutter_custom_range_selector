import 'package:flutter/material.dart';
import 'package:flutter_custom_range_selector/custom_range_selector.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double startPoint = 0.25;
  double endPoint = 0.75;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double rangeSelectorWidth = size.width * 0.75;
    double rangeSelectorHeight = rangeSelectorWidth * 0.25;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomRangeSelector(
              width: rangeSelectorWidth,
              height: rangeSelectorHeight,
              divisions: 10,
              start: startPoint,
              end: endPoint,
              onStartChange: (value){
                setState(() {
                  startPoint=value;
                });
              },
              onEndChange: (value){
                setState(() {
                  endPoint=value;
                });
              },
            ),
            SizedBox(
              height: 30,
            ),
            Text("Start : $startPoint || End : $endPoint",style: TextStyle(color: Colors.white, fontSize: 18.0),)
          ],
        ),
      ),
    );
  }
}
