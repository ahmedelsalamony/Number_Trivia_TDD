import 'package:flutter/material.dart';
import 'package:number_trivia_app/features/number_trivia/presentation/widgets/raised_button.dart';

class TriviaControls extends StatefulWidget {
  const TriviaControls({super.key});

  @override
  TriviaControlsState createState() => TriviaControlsState();
}

class TriviaControlsState extends State<TriviaControls> {
  final controller = TextEditingController();
  late String inputStr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Input a number',
          ),
          onChanged: (value) {
            inputStr = value;
          },
          onSubmitted: (_) {},
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                color: Theme.of(context).colorScheme.secondary,
                onPressed: () {},
                child: const Text('Search'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: RaisedButton(
                child: const Text('Get random trivia'),
                onPressed: () {},
              ),
            ),
          ],
        )
      ],
    );
  }
}
