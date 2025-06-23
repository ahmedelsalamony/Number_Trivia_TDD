import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia_app/core/usecase.dart';
import 'package:number_trivia_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:number_trivia_app/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

import 'get_concrete_number_trivia_test.mocks.dart';

@GenerateNiceMocks([MockSpec<NumberTriviaRepository>()])
void main() {
  //prepare some required instances for the test
  NumberTriviaRepository repository = MockNumberTriviaRepository();
  GetRandomNumberTrivia usecase = GetRandomNumberTrivia(repository: repository);

  test('Random number trivia repository ...', () async {
    //3 a's
    const tNumberTrivia = NumberTrivia(number: 1, text: 'test');
    //arrange
    when(repository.getRandomNumberTrivia())
        .thenAnswer((_) async => const Right(tNumberTrivia));
    //act
    final result = await usecase(NoParams());
    //assert
    expect(result, const Right(tNumberTrivia));
    verify(repository.getRandomNumberTrivia());
    verifyNoMoreInteractions(repository);
  });
}
