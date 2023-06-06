import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(128, 254, 252, 252),
          ),
          const SizedBox(height: 100),
          Text(
            "Are You Knowlegable...  Let's Check",
            style: GoogleFonts.shrikhand(color: Colors.green, fontSize: 20),
          ),
          const SizedBox(height: 100),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
              backgroundColor: Colors.black,
            ),
            icon: const Icon(Icons.arrow_forward_rounded),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
