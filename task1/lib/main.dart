import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MaximumBid(),
    debugShowCheckedModeBanner: false,
  ));
}

class MaximumBid extends StatefulWidget {
  const MaximumBid({super.key});

  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 100; // starting bid (you can change this)

  void _increaseBid() {
    setState(() {
      _currentBid += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bidding Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Current Maximum Bid:",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              "\$$_currentBid",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _increaseBid,
              child: const Text("Increase Bid by \$50"),
            ),
          ],
        ),
      ),
    );
  }
}
