import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/Routes.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";
  bool changeButton = false;
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
            Text(
              "Welcome $name",
              style: const TextStyle(
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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

            // creating same button using container

            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 50,
                width: changeButton ? 50 : 150,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                decoration: BoxDecoration(
                  // when we use decoration we have to define color here not in container
                  color: Colors.deepPurple,
                  // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                ),
              ),
            )

            // ElevatedButton(
            //   child: Text('Log In'),
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.deepPurple,
            //     minimumSize: Size(200, 50),
            //   ),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            // )
          ],
        ),
      ),
    );
  }
}
