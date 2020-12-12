import 'package:flutter/material.dart';

class CustomRangeSelector extends StatefulWidget {
  final double start;
  final double end;
  final int divisions;
  final Function(double start) onStartChange;
  final Function(double end) onEndChange;
  final double width;
  final double heignt;

  const CustomRangeSelector(
      {Key key,
      this.start,
      this.end,
      this.divisions,
      this.onStartChange,
      this.onEndChange,
      this.width,
      this.heignt})
      : super(key: key);

  @override
  _CustomRangeSelectorState createState() => _CustomRangeSelectorState();
}

class _CustomRangeSelectorState extends State<CustomRangeSelector> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
