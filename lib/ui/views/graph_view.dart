import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatView extends StatefulWidget {
  @override
  _StatViewState createState() => _StatViewState();
}

class _StatViewState extends State<StatView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                maxY: 20,
                barTouchData: BarTouchData(
                  enabled: false,
                  touchTooltipData: BarTouchTooltipData(
                    tooltipBgColor: Colors.transparent,
                    tooltipPadding: const EdgeInsets.all(0),
                    tooltipBottomMargin: 8,
                    getTooltipItem: (
                      BarChartGroupData group,
                      int groupIndex,
                      BarChartRodData rod,
                      int rodIndex,
                    ) {
                      return BarTooltipItem(
                        rod.y.round().toString(),
                        TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    showTitles: true,
                    textStyle: TextStyle(
                        color: const Color(0xff7589a2),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    margin: 20,
                    getTitles: (double value) {
                      switch (value.toInt()) {
                        case 0:
                          return 'Or';
                        case 1:
                          return 'Bronze';
                        case 2:
                          return 'Argent';
                        case 3:
                          return 'Cobalt';
                        default:
                          return '';
                      }
                    },
                  ),
                  leftTitles: SideTitles(showTitles: false),
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                barGroups: [
                  BarChartGroupData(x: 0, barRods: [
                    BarChartRodData(y: 8, color: Colors.lightBlueAccent)
                  ], showingTooltipIndicators: [
                    0
                  ]),
                  BarChartGroupData(x: 1, barRods: [
                    BarChartRodData(y: 10, color: Colors.lightBlueAccent)
                  ], showingTooltipIndicators: [
                    0
                  ]),
                  BarChartGroupData(x: 2, barRods: [
                    BarChartRodData(y: 14, color: Colors.lightBlueAccent)
                  ], showingTooltipIndicators: [
                    0
                  ]),
                  BarChartGroupData(x: 3, barRods: [
                    BarChartRodData(y: 15, color: Colors.lightBlueAccent)
                  ], showingTooltipIndicators: [
                    0
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            BarChart(
              BarChartData(
                alignment: BarChartAlignment.center,
                barTouchData: BarTouchData(
                  enabled: false,
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    showTitles: true,
                    textStyle:
                        const TextStyle(color: Color(0xff939393), fontSize: 10),
                    margin: 10,
                    getTitles: (double value) {
                      switch (value.toInt()) {
                        case 0:
                          return 'Or';
                        case 1:
                          return 'Bronze';
                        case 2:
                          return 'Argent';
                        case 3:
                          return 'Cobalt';
                        default:
                          return '';
                      }
                    },
                  ),
                  leftTitles: SideTitles(
                    showTitles: true,
                    textStyle: const TextStyle(
                        color: Color(
                          0xff939393,
                        ),
                        fontSize: 10),
                    margin: 0,
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowHorizontalLine: (value) => value % 10 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: const Color(0xffe7e8ec),
                    strokeWidth: 1,
                  ),
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                groupsSpace: 4,
                barGroups: getData(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<BarChartGroupData> getData() {
  final Color dark = const Color(0xff3b8c75);
  final Color normal = const Color(0xff64caad);
  final Color light = const Color(0xff73e8c9);
  return [
    BarChartGroupData(
      x: 0,
      barsSpace: 4,
      barRods: [
        BarChartRodData(
            y: 17000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 2000000000, dark),
              BarChartRodStackItem(2000000000, 12000000000, normal),
              BarChartRodStackItem(12000000000, 17000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 24000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 13000000000, dark),
              BarChartRodStackItem(13000000000, 14000000000, normal),
              BarChartRodStackItem(14000000000, 24000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 23000000000.5,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000.5, dark),
              BarChartRodStackItem(6000000000.5, 18000000000, normal),
              BarChartRodStackItem(18000000000, 23000000000.5, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 29000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 9000000000, dark),
              BarChartRodStackItem(9000000000, 15000000000, normal),
              BarChartRodStackItem(15000000000, 29000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 32000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 2000000000.5, dark),
              BarChartRodStackItem(2000000000.5, 17000000000.5, normal),
              BarChartRodStackItem(17000000000.5, 32000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
      ],
    ),
    BarChartGroupData(
      x: 1,
      barsSpace: 4,
      barRods: [
        BarChartRodData(
            y: 31000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 11000000000, dark),
              BarChartRodStackItem(11000000000, 18000000000, normal),
              BarChartRodStackItem(18000000000, 31000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 35000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 14000000000, dark),
              BarChartRodStackItem(14000000000, 27000000000, normal),
              BarChartRodStackItem(27000000000, 35000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 31000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 8000000000, dark),
              BarChartRodStackItem(8000000000, 24000000000, normal),
              BarChartRodStackItem(24000000000, 31000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 15000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000.5, dark),
              BarChartRodStackItem(6000000000.5, 12000000000.5, normal),
              BarChartRodStackItem(12000000000.5, 15000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 17000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 9000000000, dark),
              BarChartRodStackItem(9000000000, 15000000000, normal),
              BarChartRodStackItem(15000000000, 17000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
      ],
    ),
    BarChartGroupData(
      x: 2,
      barsSpace: 4,
      barRods: [
        BarChartRodData(
            y: 34000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, dark),
              BarChartRodStackItem(6000000000, 23000000000, normal),
              BarChartRodStackItem(23000000000, 34000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 32000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 7000000000, dark),
              BarChartRodStackItem(7000000000, 24000000000, normal),
              BarChartRodStackItem(24000000000, 32000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 14000000000.5,
            rodStackItems: [
              BarChartRodStackItem(0, 1000000000.5, dark),
              BarChartRodStackItem(1000000000.5, 12000000000, normal),
              BarChartRodStackItem(12000000000, 14000000000.5, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 20000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 4000000000, dark),
              BarChartRodStackItem(4000000000, 15000000000, normal),
              BarChartRodStackItem(15000000000, 20000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 24000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 4000000000, dark),
              BarChartRodStackItem(4000000000, 15000000000, normal),
              BarChartRodStackItem(15000000000, 24000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
      ],
    ),
    BarChartGroupData(
      x: 3,
      barsSpace: 4,
      barRods: [
        BarChartRodData(
            y: 14000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 1000000000.5, dark),
              BarChartRodStackItem(1000000000.5, 12000000000, normal),
              BarChartRodStackItem(12000000000, 14000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 27000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 7000000000, dark),
              BarChartRodStackItem(7000000000, 25000000000, normal),
              BarChartRodStackItem(25000000000, 27000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 29000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 6000000000, dark),
              BarChartRodStackItem(6000000000, 23000000000, normal),
              BarChartRodStackItem(23000000000, 29000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 16000000000.5,
            rodStackItems: [
              BarChartRodStackItem(0, 9000000000, dark),
              BarChartRodStackItem(9000000000, 15000000000, normal),
              BarChartRodStackItem(15000000000, 16000000000.5, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
        BarChartRodData(
            y: 15000000000,
            rodStackItems: [
              BarChartRodStackItem(0, 7000000000, dark),
              BarChartRodStackItem(7000000000, 12000000000.5, normal),
              BarChartRodStackItem(12000000000.5, 15000000000, light),
            ],
            borderRadius: const BorderRadius.all(Radius.zero)),
      ],
    ),
  ];
}
