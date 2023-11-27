import 'package:flutter/material.dart';
import 'package:flutter_app_ui/models/ahistory.dart';
import 'package:flutter_app_ui/widgets/history_list/history_list.dart';

class History extends StatefulWidget {
  const History(this.goProfile, {super.key});

  final void Function() goProfile;

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final List<AHistory> _history = [
    AHistory(
      date: DateTime(2023, 04, 11, 12, 20, 30),
      transaction: 'N°123456781',
      service: 'Transfer to Foulen',
    ),
    AHistory(
      date: DateTime(2023, 05, 11, 11, 00, 30),
      transaction: 'N°123456782',
      service: 'Transfer to Foulen',
    ),
    AHistory(
      date: DateTime(2023, 04, 20, 08, 10, 30),
      transaction: 'N°123456783',
      service: 'Transfer to Foulen',
    ),
  ];

  get goProfile => widget.goProfile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 237, 248),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'History',
            style: TextStyle(
              color: Color.fromARGB(255, 44, 110, 164),
            ),
          ),
          leading: TextButton.icon(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
            ),
            onPressed: goProfile,
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
              size: 35,
            ),
            label: const Text(''),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 5,
              ),
              child: Icon(
                Icons.circle_rounded,
                color: Color.fromARGB(255, 44, 110, 164),
                size: 52,
              ),
            ),
          ],
        ),
        body: HistoryList(history: _history),
      ),
    );
  }
}
