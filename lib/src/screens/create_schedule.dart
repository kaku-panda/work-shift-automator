import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shift/src/screens/shift_table.dart';
import 'package:shift/src/screens/input_time_division.dart';
import 'package:shift/src/screens/input_assign_num.dart';
import 'package:shift/src/screens/input_deadline_duration.dart';
import 'package:shift/src/screens/check_shift_table.dart';

// シフト表の作成に必要な変数
ShiftTable shiftTable  = ShiftTable();
bool inputTimeDivsFlag = false;
bool inputDeadlineFlag = false;
int _selectedIndex     = 0;

class CreateScheduleWidget extends StatefulWidget {
  const CreateScheduleWidget({Key? key}) : super(key: key);
  @override
  State<CreateScheduleWidget> createState() => CreateScheduleWidgetState();
}

class CreateScheduleWidgetState extends State<CreateScheduleWidget> {

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;
    
    final screens = [
      InputTimeDivisions(shiftTable: shiftTable),
      InputAssignNum(shiftTable: shiftTable),
      InputDeadlineDuration(shiftTable: shiftTable),
      CheckShiftTable(shiftTable: shiftTable),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: screenSize.height/20),
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: screenSize.width * 0.6,
                maxWidth: screenSize.width * 1.0,
              ),
              child: screens[_selectedIndex], 
            ),
            SizedBox(height: screenSize.height / 20),
          ],
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onCreateScheduleItemTapped,
        iconSize: 30,
        selectedFontSize: 13,
        unselectedFontSize: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.access_time_filled_sharp), label: 'STEP1'),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt), label: 'STEP2'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'STEP3'),
          BottomNavigationBarItem(icon: Icon(Icons.check), label: 'STEP4'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onCreateScheduleItemTapped(int index) {
    if(index != 0 && shiftTable.timeDivs.isEmpty){
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('STEP 1 : 入力エラー\n', style: TextStyle(color: Colors.red)),
            content: const Text('1つ以上の時間区分を入力してください'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: const Text('OK', style: TextStyle(color: Colors.red)),
                onPressed: () {
                  Navigator.pop(context);
                  _selectedIndex = 0; 
                  setState(() {});
                },
              ),
            ],
          );
        },
      );
    }else if(false){
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text('STEP 3 : 入力エラー\n', style: TextStyle(color: Colors.red)),
            content: const Text('"シフト表の期間"及び"希望表の入力期間"を設定してください'),
            actions: <Widget>[
              CupertinoDialogAction(
                child: const Text('OK', style: TextStyle(color: Colors.red)),
                onPressed: () {
                  Navigator.pop(context);
                  _selectedIndex = 2;
                  setState(() {});
                },
              ),
            ],
          );
        },
      );
    }else{
      setState(() {});
      _selectedIndex = index;
    }
  }
}