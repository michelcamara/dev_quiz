import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/widgets/model/answer_model.dart';
import 'package:dev_quiz/shared/widgets/model/question_model.dart';
import 'package:dev_quiz/shared/widgets/model/quiz_model.dart';
import 'package:dev_quiz/shared/widgets/model/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Michel Câmara",
      photoUrl: "https://avatars.githubusercontent.com/u/25208933?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
          title: "NLW 5 Flutter",
          imagem: AppImages.blocks,
          questionAnswered: 1,
          level: Level.facil,
          questions: [
            QuestionModel(
              title: "Está curtindo flutter",
              answers: [
                AnswerModel(title: "Estou curtindo"),
                AnswerModel(title: "Amando Flutter"),
                AnswerModel(title: "Muito top"),
                AnswerModel(title: "Show de bola", isRight: true),
              ],
            ),
            QuestionModel(
              title: "Está curtindo flutter",
              answers: [
                AnswerModel(title: "Estou curtindo"),
                AnswerModel(title: "Amando Flutter"),
                AnswerModel(title: "Muito top"),
                AnswerModel(title: "Show de bola", isRight: true),
              ],
            ),
          ])
    ];
    state = HomeState.success;
  }
}
