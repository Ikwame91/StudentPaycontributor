import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Pay",
          style: GoogleFonts.inter(
              textStyle:
                  const TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
        ),
        actions: [
          Row(
            children: [
              Text(
                "17,537",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(fontWeight: FontWeight.w400)),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications))
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Balance",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "\$20,903.00",
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.w700)),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 180,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "My Wallets",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 180,
                        height: 50,
                        decoration: BoxDecoration(
                            border: const Border.fromBorderSide(
                                BorderSide(style: BorderStyle.solid)),
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            "Transactions",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                height: height * 0.53,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: const Border.fromBorderSide(
                        BorderSide(style: BorderStyle.solid))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0, left: 23, right: 24),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quick Pay",
                          style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18)),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Edit",
                            style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 110,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: const Border.fromBorderSide(
                                  BorderSide(style: BorderStyle.solid))),
                        ),
                        Container(
                          height: 110,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: const Border.fromBorderSide(
                                  BorderSide(style: BorderStyle.solid))),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 110,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: const Border.fromBorderSide(
                                  BorderSide(style: BorderStyle.solid))),
                        ),
                        Container(
                          height: 110,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: const Border.fromBorderSide(
                                  BorderSide(style: BorderStyle.solid))),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 110,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: const Border.fromBorderSide(
                                  BorderSide(style: BorderStyle.solid))),
                        ),
                        Container(
                          height: 110,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: const Border.fromBorderSide(
                                  BorderSide(style: BorderStyle.solid))),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                      child: Text(
                    "Pay",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              )
            ]),
      ),
    );
  }
}
