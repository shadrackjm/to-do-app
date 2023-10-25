import 'package:flutter/material.dart';
import 'package:to_do_me/models/data_layer.dart';
import 'package:to_do_me/plan_provider.dart';
import 'package:to_do_me/views/plan_screen.dart';

void main() {
  runApp(const MasterPlan());
}

class MasterPlan extends StatelessWidget {
  const MasterPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: PlanProvider(
          notifier: ValueNotifier<Plan>(const Plan()), child: PlanScreen()),
    );
  }
}
