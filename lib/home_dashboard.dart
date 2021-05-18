import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu_rounded, color: Colors.white),
            onPressed: () {}, // set your color here
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
      drawer: Drawer(),
      body:
         Column(
          children: [
             Container(
               padding: EdgeInsets.fromLTRB(0.0, 128.0, 0.0, 0.0),
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
                        SizedBox(height: 12),
                      ],
                    ),
                  ),
                ),
            Container(
              child: TabBar(
                labelColor: Colors.lightBlue[700],
                tabs: [
                  Tab(text: "STATISTICS"),
                  Tab(text: "PROJECTS"),
                  Tab(text: "MEETINGS")
                ],
                controller: _tabController,
              )
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [Center(child: Text('Statistic')), Center(child: Text('Projects')), Center(child: Text('Meetings'))],
              ),
            ),
          ],
        ),
      );
  }
}
