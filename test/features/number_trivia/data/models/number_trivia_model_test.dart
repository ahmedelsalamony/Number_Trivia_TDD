import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:number_trivia_app/features/number_trivia/data/models/number_trivia_model.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'test text');

  group('fixture reader', () {
    test(
        'should return a valid model when the JSON number is regarded as a double',
        () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('trivia_double.json'));
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });
  });
  group('from json', () {
    test('should return a valid model', () async {
      //arrange
      final Map<String, dynamic> jsonMap = {
        'text': 'test text',
        'number': 1,
      };
      //act
      final result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });
  });

  group('to json', () {
    test('should return a json map', () async {
      //act
      final result = tNumberTriviaModel.toJson();
      //assert
      final Map<String, dynamic> jsonMap = {
        'text': 'test text',
        'number': 1,
      };
      expect(result, jsonMap);
    });
  });
}
