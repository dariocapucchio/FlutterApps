import 'package:flutter/material.dart';

class Plan extends StatefulWidget {
  @override
  _PlanState createState() => _PlanState();
}

class _PlanState extends State<Plan> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        title: Text('Plan Semanal'),
        centerTitle: true,

      ),
      body: Center(
        child: 
        Text('plan'),
      ),
    );
  }
}