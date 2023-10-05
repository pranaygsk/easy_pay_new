import 'package:easy_pay_new/pages/contacts_page.dart';
import 'package:easy_pay_new/pages/dashboard_page_new.dart';
import 'package:easy_pay_new/pages/profile_page.dart';
import 'package:easy_pay_new/pages/transactions_page.dart';
import 'package:easy_pay_new/providers/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Widget> pages = const [
    //Dashboard Page
    DashboardPageNew(),
    //Transactions page
    TransactionsPage(),
    //Contacts Page
    ContactsPage(),
    //Profile Page
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(builder: (context, provider, child) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: provider.currentPage == 0
            ? Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent.shade200.withOpacity(0.2),
                      offset: const Offset(0, 0),
                      blurRadius: 3,
                      spreadRadius: 3,
                    ),
                  ],
                  color: const Color(0xFF00B899),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
              )
            : null,
        backgroundColor: const Color(0xFF161622),
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).size.height / 10,
          child: BottomNavigationBar(
            elevation: 1,
            backgroundColor: const Color(0xFF161622),
            currentIndex: provider.currentPage,
            selectedItemColor: const Color(0xFF00B899),
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              provider.currentPage = index;
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(LineIcons.alternateExchange),
                label: "Transactions",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.contacts),
                label: "Contacts",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: pages[provider.currentPage],
        ),
      );
    });
  }
}
