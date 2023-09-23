import 'package:easy_pay_new/pages/contacts_page.dart';
import 'package:easy_pay_new/pages/dashboard_page_new.dart';
import 'package:easy_pay_new/pages/profile_page.dart';
import 'package:easy_pay_new/pages/transactions_page.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: _selectedIndex == 0
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
        height: 60,
        child: BottomNavigationBar(
          elevation: 1,
          backgroundColor: const Color(0xFF161622),
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF00B899),
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTap,
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
        child: pages[_selectedIndex],
      ),
    );
  }
}
