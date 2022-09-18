import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const Scaffold(
        body: QuestionWidget(),
      ),
    );
  }
}

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({
    Key? key,
  }) : super(key: key);

  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 32),
            Text('Choose Your Pace'),
            const Divider(thickness: 2, color: Color(0xff7f31a7)),
            Expanded(
              child: PageView.builder(
                  itemCount: questions.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (Context, index) {
                    final _question = questions[index];
                    return buildQuestion(_question);
                  }),
            ),
            const SizedBox(height: 20),
          ],
        ));
  }

  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(
          question.text,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 32),
        Expanded(
          child: OptionsWidget(
            question: question,
            onClickedOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
              }
            },
          ),
        )
      ],
    );
  }
}

class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionsWidget({
    Key? key,
    required this.question,
    required this.onClickedOption,
  }) : super(key: key);

  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      children: question.options
          .map((option) => buildOption(context, option))
          .toList(),
    ),
  );
  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.purple.shade200,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.purple),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.text,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (isSelected) {
      return Colors.orange;
    }
    return Colors.grey.shade300;
  }
}

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;

  const Option({
    required this.text,
  });
}

final questions = [
  Question(
    text: 'Which activity are you doing?',
    options: [
      const Option(text: 'Slow strolling'),
      const Option(text: 'Walking'),
      const Option(text: 'Power walking'),
      const Option(text: 'Running'),
      const Option(text: 'Sprinting'),
    ],
  ),
];

// i tried

// import 'package:flutter/material.dart';
// import 'genre_page.dart';
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: GenrePage(),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Classical'),
//         backgroundColor: Colors.purpleAccent,
//       ),
//       body: Container(
//         color: Colors.grey.shade200,
//         child: Center(
//           child: Container(
//             height: 50,
//             width: 150,
//             decoration: BoxDecoration(
//               color: Colors.purple.shade50,
//               borderRadius: BorderRadius.circular(4),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.purple,
//                   spreadRadius: 1,
//                   blurRadius: 6,
//                   offset: Offset(3, 3),
//                 )
//               ]
//             ),
//           ),
//         ),
//       )
//     );
//   }
// }


