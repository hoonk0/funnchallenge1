import 'package:flutter/material.dart';
import 'package:funnchallenge/route/route_login.dart';


class RouteSplash extends StatefulWidget {
  const RouteSplash({super.key});

  @override
  State<RouteSplash> createState() => _RouteSplashState();
}

class _RouteSplashState extends State<RouteSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 회원인가?
    // 이미 로그인 한 상태라면 -> RouteMain으로
    // 로그인한 상태가 아니라면 -> RouteLogin
    WidgetsBinding.instance.endOfFrame.then((value) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => RouteLogin()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
