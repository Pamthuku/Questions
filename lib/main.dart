import 'questions.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//aa
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IAlertDialog(),
    );
  }
}

class IAlertDialog extends StatefulWidget {
  @override
  _IAlertDialogState createState() => _IAlertDialogState();
}

class _IAlertDialogState extends State<IAlertDialog> {
  List<Icon> myAnswer = [];
  int close = 0;
  int check = 0;

  QA qa = new QA();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(20, 20, 25, 0.8),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(20, 20, 25, 1.0),
        shadowColor: Colors.white,
        title: Center(
          child: Text(
            "Questions",
            style: TextStyle(
                color: Color.fromRGBO(255, 200, 0, 1.0),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    qa.questions[qa.qNum].getquest(),
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Row(
              children: myAnswer,
            ),
            ansbt(yes: true, no: false, click: "1"),
            SizedBox(
              height: 10,
            ),
            ansbt(yes: false, no: true, click: "2"),
          ],
        ),
      ),
    );
  }

  FlatButton ansbt({bool yes, bool no, String click}) {
    return FlatButton(
      shape: Border.all(style: BorderStyle.solid, color: Colors.amber[500]),
      splashColor: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      color: Color.fromRGBO(20, 20, 30, 0.7),
      onPressed: () {
        setState(() {
          qa.qNum++;
        });
        if (qa.questions[qa.qNum].getuAnswer() == yes) {
          myAnswer.add(
            Icon(
              Icons.check,
              color: Colors.green,
              size: 40,
            ),
          );

          check++;
        } else if (qa.questions[qa.qNum].getuAnswer() == no) {
          myAnswer.add(
            Icon(
              Icons.close,
              color: Colors.red,
              size: 40,
            ),
          );

          close++;
        } else if (qa.questions[qa.qNum].getuAnswer() == null) {
          Alert(
            closeIcon: Icon(
              Icons.close,
              color: Colors.amber,
            ),
            style: AlertStyle(
              backgroundColor: Color.fromRGBO(20, 20, 30, 0.8),
              alertBorder: Border.all(
                  style: BorderStyle.solid, color: Colors.amber, width: 1.5),
              titleStyle: const TextStyle(
                color: Color.fromRGBO(255, 200, 0, 1.0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            context: context,
            type: AlertType.none,
            title:
                "U & I\n$close ခု(အယူအဆအားဖြင့်)ကွဲပြားပြီး\n$check ခု တူညီပါတယ်\n.  .  .\nအစကနေ ပြန်စမည်လား",
            //desc: "\n",
            buttons: [
              DialogButton(
                color: Color.fromRGBO(20, 20, 30, 1.0),
                border: Border.all(
                    style: BorderStyle.solid,
                    width: 1.5,
                    color: Color.fromRGBO(255, 200, 0, 1.0)),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 7.0),
                  child: Text(
                    "ပြန်စမယ်",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 200, 0, 1.0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                width: 120,
              )
            ],
          ).show();
          close = 0;
          check = 0;
          qa.qNum = 0;
          myAnswer.clear();
        }
      },
      child: Text(
        '$click',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(255, 200, 0, 1.0),
        ),
      ),
    );
  }
}
