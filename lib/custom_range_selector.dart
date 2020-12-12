import 'package:flutter/material.dart';

class CustomRangeSelector extends StatefulWidget {
  final double start;
  final double end;
  final int divisions;
  final Function(double start) onStartChange;
  final Function(double end) onEndChange;
  final double width;
  final double height;

  const CustomRangeSelector(
      {Key key,
      this.start,
      this.end,
      this.divisions,
      this.onStartChange,
      this.onEndChange,
      this.width,
      this.height})
      : super(key: key);

  @override
  _CustomRangeSelectorState createState() => _CustomRangeSelectorState();
}

class _CustomRangeSelectorState extends State<CustomRangeSelector> {

  double barHeight = 0;
  List<Widget> topDividers=[], bottomDividers=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    barHeight = widget.height * 0.75;
    double markerDistance = widget.width / widget.divisions;
    List markers = List.generate(widget.divisions-1, (index) => (markerDistance)*(index+1));
    topDividers = markers.map((markerPosition) => Positioned(
      top: 0,
      left: markerPosition -1,
      child: Container(
        color: Colors.black,
        width: 2,
        height: 10,
      ),
    )).toList();

    bottomDividers = markers.map((markerPosition) => Positioned(
      bottom: 0,
      left: markerPosition -1,
      child: Container(
        color: Colors.black,
        width: 2,
        height: 10,
      ),
    )).toList();


  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          Container(
            height: barHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Stack(
              children: [
                ...topDividers,
                ...bottomDividers
              ],
            ),
          )
        ],
      ),
    );
  }
}
