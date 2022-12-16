import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // One widget
            Image.asset(
              'assets/images/loginpng.png',
            ),

            // adding space between image and text
            const SizedBox(
              height: 20.0,
            ),

            // Second Widget
            const Text(
              'Welcome',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "password",
                      labelText: "password",
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 40.0,
            ),

            ElevatedButton(
              child: Text('Log In'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent,
                minimumSize: Size(200, 50),
              ),
              onPressed: () {
                print("Log In Button Clicked");
              },
            )
          ],
        ),
      ),
    );
  }
}
