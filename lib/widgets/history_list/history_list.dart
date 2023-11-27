import 'package:flutter/material.dart';
import 'package:flutter_app_ui/models/ahistory.dart';
import 'package:flutter_app_ui/widgets/history_list/history_item.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({
    super.key,
    required this.history,
  });

  final List<AHistory> history;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: history.length,
      itemBuilder: (context, index) => HistoryItem(history[index]),
    );
  }
}
