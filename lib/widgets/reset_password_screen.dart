import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png?utm_source=uk.wikipedia.org&utm_campaign=index&utm_content=original",
                width: 200,
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Text(
                "Reset Password",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: 24.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email / Login',
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () => {
                showDialog(
                  context: context,
                  builder: (BuildContext ctx) {
                    return const AlertDialog(
                      title: Text('Message'),
                      content: Text("Need to implement"),
                    );
                  },
                )
              },
              child: const Text("Reset"),
            ),
            const SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: () => {
                Navigator.pop(context)
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}