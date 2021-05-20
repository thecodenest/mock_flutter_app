import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 12,
          padding: const EdgeInsets.all(8),
          itemBuilder: (BuildContext context, int index) {
            return Card(

              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                    title: Text(
                        "Michael Fisher sent an invitationfor UI Design on 24 April. Do you wish to accept it."),
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                    child: SizedBox(
                      height: 24,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text('Invitation Accepted'),
                                duration: Duration(seconds: 3),
                              ));
                            },
                            child: Text('Accept'),
                          ),
                          SizedBox(width: 8),
                          ElevatedButton(
                              onPressed: () {
                                Scaffold.of(context).showSnackBar(SnackBar(
                                  content: Text('Invitation Rejected'),
                                  duration: Duration(seconds: 3),
                                ));
                              },
                              child: Text('Reject'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.grey)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
