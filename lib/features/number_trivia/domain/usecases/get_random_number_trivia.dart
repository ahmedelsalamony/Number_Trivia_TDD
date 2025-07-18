import 'package:dartz/dartz.dart';
import 'package:number_trivia_app/core/failure.dart';
import 'package:number_trivia_app/core/usecase.dart';
import 'package:number_trivia_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia({required this.repository});

  @override
  Future<Either<Failure, NumberTrivia>> call(params) async {
    return repository.getRandomNumberTrivia();
  }
}
