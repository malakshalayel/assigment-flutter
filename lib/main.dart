import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al-Azhar Assignment',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String studentName = "malak shalayel";
  final String studentId = "20210581";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Al-Azhar ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: "University ",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: " in Gaza",
                style: TextStyle(
                  letterSpacing: 4,
                  fontSize: 12,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        shape: LinearBorder(),
        elevation: 25,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Text(studentName[0], style: TextStyle(fontSize: 30)),
                  ),
                  SizedBox(height: 10),
                  Text("$studentId", style: TextStyle(color: Colors.white)),
                  Text("$studentName", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            ListTile(leading: Icon(Icons.mail), title: Text("malak@gmail.com")),
            Divider(),
            ListTile(leading: Icon(Icons.inbox), title: Text("Inbox")),
            ListTile(leading: Icon(Icons.people), title: Text("People")),
            ListTile(leading: Icon(Icons.local_offer), title: Text("Offers")),
          ],
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Table(
            // border: TableBorder.all(),
            defaultColumnWidth: FixedColumnWidth(150),
            children: [
              _buildTableRow("Subject", "Subject hours", isHeader: true),
              _buildTableRow("flutter", "3 hours"),
              _buildTableRow("dart ", "1 hours"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.grey,
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.home, color: Colors.white),
                  onPressed: () {},
                ),
                Expanded(
                  child: Text("Home", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(width: 40), // space for FAB
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.settings, color: Colors.black),
                  onPressed: () {},
                ),
                Expanded(child: Text("Seetings")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String col1, String col2, {bool isHeader = false}) {
    return TableRow(
      children: [_buildCell(col1, isHeader), _buildCell(col2, isHeader)],
    );
  }

  Widget _buildCell(String text, bool isHeader) {
    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.all(8),
      color: isHeader ? Colors.amber : Colors.grey,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
