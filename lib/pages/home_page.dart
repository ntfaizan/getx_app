import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print('build');
    final c = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text('${c.count}')),
            FilledButton(
              onPressed: () {
                c.increment();
              },
              child: const Text('Next'),
            ),
            FilledButton(
              onPressed: () {
                c.decrement();
              },
              child: const Text('Back'),
            ),
            FilledButton(
              onPressed: () {
                c.reset();
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
