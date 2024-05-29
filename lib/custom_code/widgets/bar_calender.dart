// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fl_chart/fl_chart.dart';

class BarCalender extends StatefulWidget {
  const BarCalender({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<BarCalender> createState() => _BarCalenderState();
}

class _BarCalenderState extends State<BarCalender> {
  List<Color> gradientColors = [Color(0XFF3894B5), Color(0XFF3894B5)];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 2 / 1.5,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 24,
              bottom: 12,
            ),
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0XFF5D6A85),
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('Mon', style: style);
        break;
      case 5:
        text = const Text('Tues', style: style);
        break;
      case 8:
        text = const Text('Wed', style: style);
        break;
      case 11:
        text = const Text('Thur', style: style);
        break;
      case 14:
        text = const Text('Fri', style: style);
        break;
      case 17:
        text = const Text('Sat', style: style);
        break;
      case 20:
        text = const Text('Sun', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0XFF5D6A85),
      fontWeight: FontWeight.w500,
      fontSize: 12,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '40';
        break;
      case 3:
        text = '50';
        break;
      case 5:
        text = '60';
        break;
      case 7:
        text = '70';
        break;
      case 9:
        text = '80';
        break;
      case 11:
        text = '90';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        drawHorizontalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            dashArray: [10],
            color: Color(0XFF5D6A85),
            strokeWidth: 0.5,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Colors.cyan,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: Border.all(color: const Color(0xff37434d)),
      ),
      minX: 0,
      maxX: 20,
      minY: 0,
      maxY: 12,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(3, 3),
            FlSpot(3, 4),
            FlSpot(6, 4),
            FlSpot(6, 6),
            FlSpot(9, 6),
            FlSpot(9, 9),
            FlSpot(12, 9),
            FlSpot(12, 4),
            FlSpot(15, 4),
            FlSpot(15, 2),
            FlSpot(18, 2),
            FlSpot(18, 1),
            FlSpot(20, 1)
          ],
          curveSmoothness: 0.12,
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 6,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: false,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
