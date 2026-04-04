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
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text(
          'Plan semanal',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
        ),
        centerTitle: true,
        toolbarHeight: 70.0,
        backgroundColor: Colors.green[600],
        elevation: 5.0,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: Center(
        child: 
        Text('plan'),
      ),
    );
  }
}