import 'package:flutter/material.dart';
import 'package:lab_vote/ui/views/vote/vote_viewmodel.dart';
import 'package:stacked/stacked.dart';

class VoteView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VoteViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(title: Text(model.title)),
        body: Column(
          children: [
          Image.network(model.vote.imgUrl),
          SizedBox(height: 10),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
                onPressed: () => model.increment(),
              ),
              Text(model.vote.favorite.toString()),
            ],
            ),
        ],
        ),
      ),
      viewModelBuilder: () => VoteViewModel(),
      );
  }
}