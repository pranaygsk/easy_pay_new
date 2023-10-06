import 'package:flutter/material.dart';

import '../models/transactions_model.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFF161622),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //top bar for back button and heading
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Container(
          //       width: 40,
          //       height: 40,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(30),
          //         color: Colors.grey.shade800,
          //       ),
          //       child: const Icon(
          //         Icons.arrow_back,
          //         color: Colors.white,
          //       ),
          //     ),
          //     const SizedBox(
          //       width: 70,
          //     ),
          //     Text(
          //       "Transactions",
          //       style: TextStyle(
          //         color: Colors.grey.shade400,
          //         fontSize: 22,
          //         fontWeight: FontWeight.w600,
          //       ),
          //     ),
          //   ],
          // ),
          Center(
            child: Text(
              "Transactions",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          //Income and Expenses Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 3,
                height: 60,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.green,
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  "Incomes",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey.shade400),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 3,
                height: 60,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.red,
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Text(
                  "Expenses",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey.shade400),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 0.5,
          ),
          const SizedBox(
            height: 20,
          ),

          //Transactions
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: transactions[index].isReceived
                            ? Colors.green
                            : Colors.red,
                        offset: const Offset(
                          1.0,
                          1.0,
                        ),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                      ), //BoxShadow
                      const BoxShadow(
                        color: Colors.black,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                    borderRadius: BorderRadius.circular(15.0),
                    // border: Border.fromBorderSide(
                    //   BorderSide(
                    //     color: Colors.grey.shade900,
                    //   ),
                    // ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transactions[index].name.toString(),
                                style: TextStyle(
                                    color: Colors.grey.shade300, fontSize: 16),
                              ),
                              Text(
                                transactions[index].date_time.toString(),
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          ),
                          Text(
                            "\$ ${transactions[index].amount.toString()}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: transactions[index].isReceived
                                    ? Colors.green
                                    : Colors.red,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                );
              },
              itemCount: transactions.length,
            ),
          ),
        ],
      ),
    );
    // return const Center(
    //   child: Text("Transactions",
    //       style: TextStyle(color: Colors.grey, fontSize: 14)),
    // );
  }
}
