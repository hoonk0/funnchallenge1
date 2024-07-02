import 'package:flutter/material.dart';


class RouteMain extends StatelessWidget {
  const RouteMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          '사원 관리',
        ),
      ),

    );
  }
}
