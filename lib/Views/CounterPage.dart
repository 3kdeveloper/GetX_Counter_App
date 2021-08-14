import 'package:flutter/material.dart';
import 'package:flutter_state_management/Controllers/CounterController.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  final counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GetX Counter App'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    'Count Is: ${counterController.count.value}',
                    style: TextStyle(fontSize: 40),
                  )),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        counterController.increment();
                      },
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 40),
                      )),
                  SizedBox(width: 30),
                  ElevatedButton(
                      onPressed: () {
                        counterController.decrement();
                      },
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 40),
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}
