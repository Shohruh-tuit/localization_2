import "package:flutter/material.dart";
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "flutter",
                  style: TextStyle(fontSize: 20),
                ).tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.green,
                    child: Text(
                      "English",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      context.locale = Locale('en', 'US');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.red,
                    child: Text(
                      "Korean",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      context.locale = Locale('ko', 'KR');
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blue,
                    child: Text(
                      "Japanese",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      context.locale = Locale('ja', 'JP');
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
