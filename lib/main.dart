import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$teamAPoints',
                      style: TextStyle(
                        fontSize: 160,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                        print('one point $teamAPoints');
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    //indent: 10,
                    //endIndent: 250,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$teamBPoints',
                      style: TextStyle(
                        fontSize: 160,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(150, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
