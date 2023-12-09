import 'package:goal_based_investment/model/goal_card_model.dart';
import 'package:rxdart/rxdart.dart';

class GoalController {
  final BehaviorSubject<GoalModel> _selectedGoal = BehaviorSubject();

  selectGoal(GoalModel goal) {
    _selectedGoal.add(goal);
  }

  BehaviorSubject<GoalModel> get getSelectedGoal => _selectedGoal;
}

GoalController goalController = GoalController();
