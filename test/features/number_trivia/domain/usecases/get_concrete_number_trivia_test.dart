import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:number_trivia_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia_app/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:number_trivia_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';

import 'get_concrete_number_trivia_test.mocks.dart';

@GenerateNiceMocks([MockSpec<NumberTriviaRepository>()])
void main() {
  late MockNumberTriviaRepository mockRepository;
  late GetConcreteNumberTrivia usecase;

  setUp(() {
    mockRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockRepository);
  });

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test('should get trivia for the number from the repository', () async {
    // arrange
    when(mockRepository.getConcreteNumberTrivia(tNumber))
        .thenAnswer((_) async => const Right(tNumberTrivia));

    // act
    final result = await usecase(const Params(number: tNumber));

    // assert
    expect(result, const Right(tNumberTrivia));
    verify(mockRepository.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(mockRepository);
  });
}
