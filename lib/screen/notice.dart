import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notice extends StatelessWidget {
  const Notice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاشعارات'),
      ),
    );
  }
}
