import 'package:flutter/material.dart';
import 'package:students_pay/Earn_Screen_Folder/Option_pages/points_option/bar_graph/bar_graph.dart';
import 'package:students_pay/Earn_Screen_Folder/components/subscriptionInfo.dart';
import 'package:students_pay/Earn_Screen_Folder/widgets/Points_screen_widget/points_screen_container.dart';
import 'package:students_pay/Earn_Screen_Folder/widgets/custom_rounded_button.dart';

class PointsOptionPage extends StatefulWidget {
  const PointsOptionPage({super.key});

  @override
  State<PointsOptionPage> createState() => _PontsPageState();
}

class _PontsPageState extends State<PointsOptionPage> {
  List<double> weeklySummary = [
    4.40,
    2.50,
    42.40,
    12.50,
    100.40,
    82.50,
    42.40,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        SizedBox(
          height: 250,
          child: MyBarGraph(weeklySummary: weeklySummary),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SubscriptionInfo(
            icon: Image.asset(
              'assets/images/offer.png',
              width: 24,
              height: 24,
            ),
            info:
                'Start earning up to 1000 a month including no transaction fees',
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SubscriptionInfo(
            info: 'Subscribe to get more points',
            icon: Image.asset(
              'assets/images/cash.png',
              width: 24,
              height: 24,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SubscriptionInfo(
            info: 'Subscribe to get more points',
            icon: Image.asset(
              'assets/images/cash.png',
              width: 24,
              height: 24,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15, right: 15, top: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                //create a container with aborder of width 3 and outlineborder of  color grey with texts ina column inside it let the container be height 200 and width 120 and wrap the container with  a singlechildscrollview
                PointsScreenContainer(),
                PointsScreenContainer(),
                PointsScreenContainer(),
                PointsScreenContainer(),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomRoundedButton(),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
