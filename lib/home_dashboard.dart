import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu_rounded, color: Colors.white),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            }, // set your color here
          ),
          title: Text('Profile'),
          backgroundColor: Color(0xff9397F4),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.filter_list_rounded, color: Colors.white),
            ),
          ]),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Jacob Watson"),
              accountEmail: Text("Senior Product Designer"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightBlue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: (){},
              leading: Icon(Icons.home),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text('Notification'),
              onTap: (){},
              leading: Icon(Icons.notifications),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text('Message'),
              onTap: (){},
              leading: Icon(Icons.message),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: (){},
              leading: Icon(Icons.person_rounded),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: (){},
              leading: Icon(Icons.settings),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text('Logout'),
              onTap: (){},
              leading: Icon(Icons.logout),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 128.0, 0.0, 0.0),
            child: Center(
              child: Column(
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
                  Text(
                    'Jacob Watson',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Senior Product Designer'),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
              child: TabBar(
                labelColor: Colors.lightBlue[700],
                tabs: [
                  Tab(text: "STATISTICS"),
                  Tab(text: "PROJECTS"),
                  Tab(text: "MEETINGS")
                ],
                controller: _tabController,
              )),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          CircularPercentIndicator(
                            radius: 120.0,
                            lineWidth: 5.0,
                            animation: true,
                            percent: 0.50,
                            center: Text(
                              "50%",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            backgroundColor: Colors.grey[300],
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.blue,
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'TASK\nCOMPLETED',
                            style: TextStyle(color: Colors.grey[800]),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          CircularPercentIndicator(
                            radius: 120.0,
                            lineWidth: 5.0,
                            animation: true,
                            percent: 0.75,
                            center: Text(
                              "75%",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            backgroundColor: Colors.grey[300],
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.blue,
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'MEETING\nATTENTED',
                            style: TextStyle(color: Colors.grey[800]),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          CircularPercentIndicator(
                            radius: 120.0,
                            lineWidth: 5.0,
                            animation: true,
                            percent: 0.25,
                            center: Text(
                              "25%",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            backgroundColor: Colors.grey[300],
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Colors.blue,
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            'EVENT\nATTENTED',
                            style: TextStyle(color: Colors.grey[800]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Center(child: Text('Projects')),
                Center(child: Text('Meetings'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
