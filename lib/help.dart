import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
final String text = """There are times when an employer will demand that any potential candidate must have certain certifications to be able to apply.

It’s still very much worthwhile to include your certifications even if they’re not specifically mentioned in the job requirements.

They’re valuable to show exactly how much knowledge and commitment you have to your industry, and they’re really useful if you’ve not got direct work experience in your field yet.

Another plus point of having certificates in your field is that your future employer can see the time and money you’ve already invested in your development.""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
      ),
      body: Center(
        child: Padding
        (
          padding: const EdgeInsets.all(18.0),
          child: Text(text),
        )
        ),
      );
  }
}