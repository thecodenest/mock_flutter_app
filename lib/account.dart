import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mock_flutter_app/forgot_password.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xff9397F4),
                        radius: 50,
                        child: Text(
                          'JW',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 12),
                      Text('Jacob Watson', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(height: 8),
                      Text('Senior Product Designer'),
                    ],
                  ),
                ),
              )
          ),
          Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));},
                            child: Text('ENTER TO YOUR ACCOUNT'),
                          ),
                        ),
                        SizedBox(height: 24),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                          },
                          child: Text(
                              'SWITCH TO A DIFFERENT ACCOUNT'
                          ),
                        ),
                      ],
                    ),
          )
          )
        ],
      ),
    ));
  }
}
