class Transactions {
  String name;
  String date_time;
  bool isReceived;
  int amount;

  Transactions({
    required this.isReceived,
    required this.amount,
    required this.name,
    required this.date_time,
  });
}

List<Transactions> transactions = [
  Transactions(
    isReceived: true,
    amount: 1000,
    name: 'Lisa',
    date_time: '15 Oct, 05:45 PM',
  ),
  Transactions(
    isReceived: true,
    amount: 5000,
    name: 'Jack',
    date_time: '15 Oct, 05:45 PM',
  ),
  Transactions(
    isReceived: false,
    amount: 12000,
    name: 'Harry',
    date_time: '15 Oct, 05:45 PM',
  ),Transactions(
    isReceived: true,
    amount: 1000,
    name: 'Lisa',
    date_time: '15 Oct, 05:45 PM',
  ),
  Transactions(
    isReceived: true,
    amount: 5000,
    name: 'Jack',
    date_time: '15 Oct, 05:45 PM',
  ),
  Transactions(
    isReceived: false,
    amount: 12000,
    name: 'Harry',
    date_time: '15 Oct, 05:45 PM',
  ),Transactions(
    isReceived: true,
    amount: 1000,
    name: 'Lisa',
    date_time: '15 Oct, 05:45 PM',
  ),
  Transactions(
    isReceived: true,
    amount: 5000,
    name: 'Jack',
    date_time: '15 Oct, 05:45 PM',
  ),
  Transactions(
    isReceived: false,
    amount: 12000,
    name: 'Harry',
    date_time: '15 Oct, 05:45 PM',
  ),
];
