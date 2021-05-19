import 'package:flutter/material.dart';
import 'package:mock_flutter_app/account.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  color: Color(0xff9397F4),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24.0, 0.0, 0.0, 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                            'Retro occupy organic. Actually artisan organic occupy. Retro occupy organic. Actually artisian organic occupy.',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.start)
                      ],
                    ),
                  ))),
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xffFFFFFF),
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(decoration: InputDecoration(labelText: 'Email')),
                  SizedBox(height: 16.0),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Password  ')),
                  SizedBox(height: 24.0),
                  SizedBox(
                    width: double.infinity,
                    height: 48.0,
                    child: ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Account()));},
                      child: Text('LOGIN TO YOUR ACCOUNT'),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Text('Or Login with social account'),
                  SizedBox(height: 24.0),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text('FACEBOOK',
                                  style: TextStyle(color: Color(0xff6d63c9))),
                            style: OutlinedButton.styleFrom(side: BorderSide(width: 1, color: Color(0xff6d63c9))),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Text('GOOGLE',
                                    style:
                                        TextStyle(color: Color(0xffff9b9d))),
                              style: OutlinedButton.styleFrom(side: BorderSide(width: 1, color: Color(0xffff9b9d))),

                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
