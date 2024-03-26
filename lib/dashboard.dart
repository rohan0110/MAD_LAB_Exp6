import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  var user_name;

  Map userdata = {};

  @override
  Widget build(BuildContext context) {
    userdata = ModalRoute.of(context)!.settings.arguments as Map;

    print(userdata);

    setState(() {
      user_name = userdata['name'];
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to App",
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            SizedBox(height: 20.0), // Add spacing between text and user name
            Text(
              "$user_name",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 20.0), // Add spacing between user name and button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text("Go to Home"),
            ),
          ],
        ),
      ),
    );
  }


}