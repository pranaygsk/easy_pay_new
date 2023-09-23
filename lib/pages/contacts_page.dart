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
                borderRadius: BorderRadius.circular(15)),
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
                )
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
                  );
                }),
          ),
        ],
      ),
    );
  }
}
