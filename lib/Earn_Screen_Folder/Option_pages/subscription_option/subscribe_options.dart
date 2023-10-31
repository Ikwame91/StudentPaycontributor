// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:students_pay/Earn_Screen_Folder/components/Savings_field.dart';
import 'package:students_pay/Earn_Screen_Folder/components/offers.dart';
import 'package:students_pay/Earn_Screen_Folder/components/options.dart';
import 'package:students_pay/Earn_Screen_Folder/components/subscriptionInfo.dart';

class SubscribeOptionPage extends StatefulWidget {
  const SubscribeOptionPage({super.key});

  @override
  State<SubscribeOptionPage> createState() => _SubscribeOptionState();
}

class _SubscribeOptionState extends State<SubscribeOptionPage> {
  int? selectedIndex;

  void updateSelectedIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Earn",
          style: GoogleFonts.inter(
            textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 40,
                width: 23,
                child: Image(
                  image: AssetImage("assets/images/star1.png"),
                ),
              ),
              Text(
                "17,537",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                width: 1,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Savings(
            title: 'Your Savings Balance',
            savingsAmount: '\$15,903.',
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: OptionsField(
                    currentUser: 0,
                    // Pass the callback function to OptionsField
                    updateSelectedIndex: updateSelectedIndex,
                    index: 0,
                    options: 'Subscribe',
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  currentUser: 0,
                  updateSelectedIndex: updateSelectedIndex,
                  index: 1,
                  options: 'Referral',
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  currentUser: 0,
                  updateSelectedIndex: updateSelectedIndex,
                  index: 2,
                  options: 'Points',
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  currentUser: 0,
                  updateSelectedIndex: updateSelectedIndex,
                  index: 3,
                  options: 'Microjobs',
                ),
                SizedBox(
                  width: 7,
                ),
                OptionsField(
                  currentUser: 0,
                  updateSelectedIndex: updateSelectedIndex,
                  index: 4,
                  options: 'Challenge',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 25),
            child: Text(
              'Student Monthly Subscription',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 10),
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
          SizedBox(height: 20),
          Column(
            children: [
              SubscriptionOffers(
                index: 0,
                color: Color(0x73C6D7F1),
                text: 'GHC 50 Offer',
                textTwo:
                    'Start earning up to 1000 a month including no transaction fees, except withdrawing from the platform to another platform',
              ),
              SubscriptionOffers(
                index: 1,
                color: Color(0xFFC5F3D6),
                text: 'GHC 150 Offer',
                textTwo:
                    'Start earning up to 1000 a month including no transaction fees  except withdrawing from the platform to another platform',
              ),
              SubscriptionOffers(
                index: 2,
                color: Color(0xFFFAF6D3),
                text: 'GHC 300 Offer',
                textTwo:
                    'Start earning up to 1000 a month including no transaction fees  except withdrawing from the platform to another platform',
              ),
              SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}