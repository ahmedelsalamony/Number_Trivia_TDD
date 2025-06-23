import 'package:flutter/material.dart';
import 'package:number_trivia_app/features/number_trivia/presentation/widgets/trivia_controls.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                // Top half

                SizedBox(height: 20),
                // Bottom half
                TriviaControls()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
