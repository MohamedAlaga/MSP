import 'package:flutter/material.dart';
import 'package:msp_task3/count_screen.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = TextEditingController();
    var email = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              'assets/login.png',
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'email',
                    textAlign: TextAlign.left,
                  ),
                  TextField(controller: email,),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'user name',
                    textAlign: TextAlign.left,
                  ),
                  TextField(controller: user,),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => counterScreen(
                          mail: email.text, userName: user.text)),
                );
              },
              child: Text('login'),
            )
          ],
        ),
      ),
    );
  }
}
