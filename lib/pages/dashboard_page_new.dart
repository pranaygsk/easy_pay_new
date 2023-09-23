import 'package:easy_pay_new/components/my_card.dart';
import 'package:easy_pay_new/models/transactions_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardPageNew extends StatefulWidget {
  const DashboardPageNew({super.key});

  @override
  State<DashboardPageNew> createState() => _DashboardPageNewState();
}

class _DashboardPageNewState extends State<DashboardPageNew> {
  final _swipeController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20,left: 20,right: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFF161622),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Top Bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade800,
                ),
                child: const Icon(
                  Icons.menu_outlined,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade800),
                child: const Icon(
                  Icons.notifications_active_sharp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          //-------------Cards----------------
          SizedBox(
            height: 200,
            child: PageView(
              controller: _swipeController,
              scrollDirection: Axis.horizontal,
              children: const [
                MyCard(),
                MyCard(),
                MyCard(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SmoothPageIndicator(
              controller: _swipeController,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade600,
                dotColor: Colors.grey.shade800,
                dotHeight: 12,
                dotWidth: 12,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Transactions",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "All >",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: transactions[index].isReceived
                            ? Colors.green
                            : Colors.red,
                        offset: const Offset(1.0, 1.0),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                      ), //BoxShadow
                      const BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0), //BoxShadow
                    ],
                    borderRadius: BorderRadius.circular(15.0),
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
                              Text(transactions[index].name.toString(),
                                  style: TextStyle(
                                      color: Colors.grey.shade300,
                                      fontSize: 16)),
                              Text(transactions[index].date_time.toString(),
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                            ],
                          ),
                          Text("\$ ${transactions[index].amount.toString()}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: transactions[index].isReceived
                                      ? Colors.green
                                      : Colors.red,
                                  fontSize: 14)),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // )
                    ],
                  ),
                );
              },
              itemCount: transactions.length,
            ),
          )
        ],
      ),
    );
  }
}
