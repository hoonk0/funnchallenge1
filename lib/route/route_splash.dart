import 'package:flutter/material.dart';
import '../const/value/colors.dart';
import '../const/value/text_style.dart';
import 'route_login.dart';

class RouteSplash extends StatefulWidget {
  const RouteSplash({super.key});

  @override
  State<RouteSplash> createState() => _RouteSplashState();
}

class _RouteSplashState extends State<RouteSplash> {
  @override
  void initState() {
    super.initState();
    // initState에서 다이얼로그를 표시하도록 설정합니다.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDialog();
    });
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: SizedBox(
            height: 200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 49),
                const Text(
                  '펀앤챌린지에서 보내는 알림(Push)을 받아보시겠습니까?',
                  style: TS.s10w400(colorWhite),
                ),
                const SizedBox(height: 34),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xff535353),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                content: SizedBox(
                                  height: 500,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 20),
                                      const Text(
                                        '마이파크 권한 설정 안내',
                                        style: TS.s16w700(colorWhite),
                                      ),

                                      const SizedBox(height: 20),

                                      const Text(
                                        '필수 접근 권한',
                                        style: TS.s14w400(colorWhite),
                                      ),

                                      const SizedBox(height: 20),

                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.phone_iphone_sharp,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 12),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      '기기 및 앱 기록',
                                                      style: TS.s12w700(colorWhite)
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                      '앱 버전 확인',
                                                      style: TS.s10w600(colorWhite)
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 28),

                                          Row(
                                            children: [
                                              Icon(
                                                Icons.camera_alt_rounded,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 12),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      '카메라',
                                                      style: TS.s12w700(colorWhite)
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                      '회원 사진 등록',
                                                      style: TS.s10w600(colorWhite)
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 28),

                                          Row(
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 12),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      '전화',
                                                      style: TS.s12w700(colorWhite)
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                      '전화 연결',
                                                      style: TS.s10w600(colorWhite)
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),

                                      const SizedBox(height: 28),

                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.folder,
                                            size: 40,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  '저장용량',
                                                  style: TS.s12w700(colorWhite)
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                  '결과리포트 저장',
                                                  style: TS.s10w600(colorWhite)
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      const SizedBox(height: 40),

                                      Row(
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.white,
                                                backgroundColor: const Color(0xffE41745),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                              ),
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const RouteLogin()),
                                                );

                                              },
                                              child: const Text(
                                                '확인',
                                                style: TS.s14w700(colorWhite),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );

                        },
                        child: const Text(
                          '취소',
                          style: TS.s14w700(colorWhite),
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),

                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xffE41745),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                content: SizedBox(
                                  height: 500,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 20),
                                      const Text(
                                        '마이파크 권한 설정 안내',
                                        style: TS.s16w700(colorWhite),
                                      ),

                                      const SizedBox(height: 20),

                                      const Text(
                                        '필수 접근 권한',
                                        style: TS.s14w400(colorWhite),
                                      ),

                                      const SizedBox(height: 20),

                                      const Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.phone_iphone_sharp,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 12),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '기기 및 앱 기록',
                                                      style: TS.s12w700(colorWhite)
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                    '앱 버전 확인',
                                                    style: TS.s10w600(colorWhite)
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 28),

                                          Row(
                                            children: [
                                              Icon(
                                                Icons.camera_alt_rounded,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 12),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      '카메라',
                                                      style: TS.s12w700(colorWhite)
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                      '회원 사진 등록',
                                                      style: TS.s10w600(colorWhite)
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                          SizedBox(height: 28),

                                          Row(
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                              SizedBox(width: 12),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      '전화',
                                                      style: TS.s12w700(colorWhite)
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                      '전화 연결',
                                                      style: TS.s10w600(colorWhite)
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),

                                      const SizedBox(height: 28),

                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.folder,
                                            size: 40,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 12),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  '저장용량',
                                                  style: TS.s12w700(colorWhite)
                                              ),
                                              SizedBox(height: 4),
                                              Text(
                                                  '결과리포트 저장',
                                                  style: TS.s10w600(colorWhite)
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      const SizedBox(height: 40),

                                      Row(
                                        children: [
                                          Expanded(
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.white,
                                                backgroundColor: const Color(0xffE41745),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                              ),
                                              onPressed: () {

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const RouteLogin()),
                                                );

                                              },
                                              child: const Text(
                                                '확인',
                                                style: TS.s14w700(colorWhite),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );

                        },
                        child: const Text(
                          '확인',
                          style: TS.s14w700(colorWhite),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: const SizedBox(), // 빈 화면을 위한 빈 SizedBox 사용
    );
  }
}
