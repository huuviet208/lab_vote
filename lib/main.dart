import 'package:flutter/material.dart';
import 'package:lab_vote/ui/views/vote/vote_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VoteView(),
    );
  }
}

