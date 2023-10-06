import 'dart:math';

import 'package:easy_pay_new/components/contact_tile.dart';
import 'package:easy_pay_new/models/contacts_model.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: const Color(0xFF161622),
      child: Column(
        children: [
          //appbar
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contacts",
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          //Search
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFF161622),
              border: const Border.fromBorderSide(
                BorderSide(
                  color: Colors.grey,
                ),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //Contacts List
          Expanded(
            child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return ContactTile(
                    name: contacts[index].name,
                    email: contacts[index].email,
                    phoneNum: contacts[index].phoneNumber,
                    onReceivePressed: () {
                      _showRequestDialog(context);
                    },
                    onSendPressed: () {
                      _showSendDialog(context);
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }

  void _showSendDialog(BuildContext context) {
    TextEditingController amountController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Send Money'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Enter Amount'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle the send button action here
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Send', style: TextStyle(color: Colors.red)),
                    Transform.rotate(
                        angle: 45 * pi / 180,
                        child: const Icon(
                          Icons.arrow_upward_outlined,
                          color: Colors.red,
                        ))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showRequestDialog(BuildContext context) {
    TextEditingController amountController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Receive Money'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Enter Amount'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle the send button action here
                  Navigator.of(context).pop(); // Close the dialog
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Request', style: TextStyle(color: Colors.green)),
                    Transform.rotate(
                        angle: 45 * pi / 180,
                        child: const Icon(
                          Icons.arrow_downward_outlined,
                          color: Colors.green,
                        ))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
