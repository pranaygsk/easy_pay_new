import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //appbar
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          color: const Color(0xFF282828),
          alignment: FractionalOffset.topLeft,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          child: Column(
            children: [
              //appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Hi Pranay!",
                    style: TextStyle(
                        color: Color(0xFF00B899),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[500],
                            border: Border.all(width: 1.0, color: Colors.black),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: const Icon(
                          Icons.credit_card,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[500],
                            border: Border.all(width: 1.0, color: Colors.black),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: const Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              //cards
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.red,
                ),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 1.1,
                height: MediaQuery.of(context).size.height / 4,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //balance
                          const Text(
                            "\$12500",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          //logo
                          Image.asset(
                            "assets/logos/visa.png",
                            width: 50,
                            height: 50,
                          )
                        ],
                      ),
                      const Center(
                        child: Text(
                          "1234 **** ****",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Row(
                        //card type
                        children: [
                          Text(
                            "Debit Card",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                        //expiry month and year
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

        //send/receive buttons

        //recent transactions with More buttons
      ],
    );
  }
}
