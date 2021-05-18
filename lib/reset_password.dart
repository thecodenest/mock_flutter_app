import 'package:flutter/material.dart';
import 'package:mock_flutter_app/home_dashboard.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff9397F4),
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0.0, 64.0, 0.0, 0.0),
                child: Text('Productivo.',
                    style: TextStyle(color: Colors.white, fontSize: 28),
                    textAlign: TextAlign.center)),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 56.0, 16.0, 16.0),
              child: Card(
                elevation: 20,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SizedBox(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Reset \nPassword', style: TextStyle(color: Colors.black, fontSize: 28),
                        textAlign: TextAlign.left),
                        SizedBox(height: 24.0),
                        Text('Please enter your new password.', style: TextStyle(color: Colors.grey[600])),
                        SizedBox(height: 32.0),
                        TextField(decoration: InputDecoration(labelText: 'Password')),
                        SizedBox(height: 8.0),
                        TextField(decoration: InputDecoration(labelText: 'Confirm Password')),
                        SizedBox(height: 24.0),
                        SizedBox(
                          width: double.infinity,
                          height: 44.0,
                          child: ElevatedButton(
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));},
                            child: Text('RESET PASSWORD'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
