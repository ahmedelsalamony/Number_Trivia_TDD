import 'package:number_trivia_app/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  const NumberTriviaModel({
    required super.number,
    required super.text,
  });

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
      number: (json['number'] as num).toInt(),
      text: json['text'],
    );
  }

  Map<String, dynamic> toJson() => {
        'number': number,
        'text': text,
      };
}
