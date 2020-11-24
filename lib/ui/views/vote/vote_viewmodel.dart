import 'package:stacked/stacked.dart';
import 'package:lab_vote/ui/views/vote/vote_model.dart';

class VoteViewModel extends BaseViewModel {
  final title = 'Vote View';
  final Vote vote = Vote();
  void increment()
  {
    vote.increment();
    notifyListeners();
  }
}
