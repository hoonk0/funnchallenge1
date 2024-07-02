import 'package:flutter/material.dart';
import 'package:funnchallenge/login/join_new_member.dart';
import 'package:funnchallenge/screen/user_information.dart';


import '../../const/value/colors.dart';
import '../../const/value/text_style.dart';

class RouteLogin extends StatefulWidget {
  const RouteLogin({super.key});

  @override
  _RouteLoginState createState() => _RouteLoginState();
}

class _RouteLoginState extends State<RouteLogin> {
  final TextEditingController tecId = TextEditingController();
  final TextEditingController tecPw = TextEditingController();
  final TextEditingController tecName = TextEditingController();
  final TextEditingController tecYear = TextEditingController();
  final TextEditingController tecMonth = TextEditingController();
  final TextEditingController tecDay = TextEditingController();
  String selectedMonth = '1'; // 초기 값은 1월로 설정
  String selectedDay = '1'; // 초기 값은 1일로 설정

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    tecId.dispose();
    tecPw.dispose();
    tecName.dispose();
    tecYear.dispose();
    tecMonth.dispose();
    tecDay.dispose();
    super.dispose();
  }

  void _confirmId() {
    if (tecName.text != 'name') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            content: Container(
              height: 152,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        '아이디 찾기',
                        style: TS.s16w700(colorWhite)
                    ),

                    SizedBox(width: 15),

                    Text(
                      '해당 이름 또는 이메일로 등록한 계정이 없습니다',
                      style: TS.s10w600(colorWhite)
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            child: Text(
                                '회원가입 하기',
                              style: TS.s14w700(colorWhite),
                            ),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xffE41745),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const JoinNewMember()),
                              );
                            },
                          ),
                        ),

                        SizedBox(width: 15),

                        Expanded(
                          child: ElevatedButton(
                            child: Text(
                                '다시 찾기',
                            style: TS.s14w700(colorWhite),
                            ),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xffE41745),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            content: Container(
              height: 252,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        '아이디 찾기',
                        style: TS.s16w700(colorWhite)
                    ),

                    SizedBox(width: 15),

                    Text(
                        '회원님의 아이디는 아래와 같습니다',
                        style: TS.s10w600(colorWhite)
                    ),

                    SizedBox(height: 32),

                    Text(
                        'daba@gmail.com',
                        style: TS.s24w900(colorVolcano600)
                    ),

                    SizedBox(height: 32),


                    Container(
                        width: double.infinity, //
                      child: ElevatedButton(
                        child: Text(
                          '확인',
                          style: TS.s14w700(colorWhite),
                        ),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color(0xffE41745),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();

                        },
                      ),
                    ),

                  ],
                ),
              ),
            ),
          );
        },
      );
    }
  }



  void _confirmPw() {
    if (tecId.text != 'id') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            content: Container(
              height: 152,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        '비밀번호 찾기',
                        style: TS.s16w700(colorWhite)
                    ),

                    SizedBox(width: 15),

                    Text(
                        '존재하지 않는 아이디입니다',
                        style: TS.s10w600(colorWhite)
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            child: Text(
                              '아이디 찾기',
                              style: TS.s14w700(colorWhite),
                            ),
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Color(0xffE41745),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),

                        SizedBox(width: 15),

                        Expanded(
                          child: ElevatedButton(
                            child: Text(
                              '다시 찾기',
                              style: TS.s14w700(colorWhite),
                            ),
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Color(0xffE41745),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            content: Container(
              height: 252,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        '비밀번호 찾기',
                        style: TS.s16w700(colorWhite)
                    ),

                    SizedBox(width: 15),

                    Text(
                        '임시 비밀번호가 전송되었습니다',
                        style: TS.s10w600(colorWhite)
                    ),

                    SizedBox(height: 17),

                    Container(
                      width: double.infinity, //
                      child: ElevatedButton(
                        child: Text(
                          '확인',
                          style: TS.s14w700(colorWhite),
                        ),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color(0xffE41745),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();

                        },
                      ),
                    ),

                  ],
                ),
              ),
            ),
          );
        },
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UserInformation()),
                  );
                },
                icon: const Icon(Icons.person_2_outlined),
                color: colorWhite,
              ),
              IconButton(
                onPressed: () async {
                  //need to make drawer menu
                },
                icon: const Icon(Icons.menu),
                color: colorWhite,
              ),
              SizedBox(width: 30)
            ],
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 160),
                  Text(
                    '로그인',
                    style: TS.s16w700(colorWhite),
                  ),

                  const SizedBox(height: 27),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 47),
                        child: TextField(
                          controller: tecId,
                          style: TS.s12w400(colorWhite),
                          decoration: const InputDecoration(
                            hintText: '아이디',
                            hintStyle: TS.s12w400(colorWhite),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: colorWhite),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 47),
                        child: TextField(
                          controller: tecId,
                          style: TS.s12w400(colorWhite),
                          decoration: const InputDecoration(
                            hintText: '비밀번호',
                            hintStyle: TS.s12w400(colorWhite),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: colorWhite),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 47),
                              child: ElevatedButton(
                                onPressed: () {

                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        content: Container(
                                          height: 152,
                                          width: 353, // 원하는 높이로 설정
                                          child: Center(
                                            child: Text(
                                                '잘못된 아이디 또는 비밀번호를 입력했습니다.',
                                                style: TS.s12w700(colorWhite)
                                            ),
                                          ),
                                        ),
                                        actions: <Widget>[
                                          Container(
                                            width: double.infinity, // 버튼의 너비를 다이얼로그 너비에 맞추기
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10.0),
                                                bottomRight: Radius.circular(10.0),
                                                topLeft:Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                            ),
                                            child: ElevatedButton(
                                              child: Text('확인'),
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.white,
                                                backgroundColor: Color(0xffE41745), // 텍스트 색상
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );


                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffE41745),
                                  fixedSize: const Size(300, 40),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  '로그인',
                                  style: TS.s14w700(colorWhite)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 15),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const JoinNewMember()),
                              );
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '회원가입',
                                  style: TS.s12w400(colorWhite),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Text(
                            '|',
                            style: TS.s12w400(colorWhite),
                          ),
                          SizedBox(width: 16),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                      child: Text('아이디 찾기',
                                        style: TS.s16w700(colorWhite),),
                                    ),
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    content: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        height: 262, // 원하는 높이로 설정
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Text(
                                                  '아이디는 가입 시 입력하신 이메일을 통해 찾을 수 있습니다',
                                                  style: TS.s10w400(colorWhite)
                                              ),

                                              SizedBox(height: 20),

                                              TextField(
                                                controller: tecName,
                                                style: TS.s12w400(colorWhite),
                                                decoration: const InputDecoration(
                                                  hintText: '이름',
                                                  hintStyle: TS.s12w400(colorGray500),
                                                  border: OutlineInputBorder(),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.grey),
                                                    borderRadius: BorderRadius.all(Radius.circular(1.0)),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: colorWhite),
                                                    borderRadius: BorderRadius.all(Radius.circular(1.0)),
                                                  ),
                                                ),
                                              ),

                                              SizedBox(height: 20),


                                              /*
                                              Row(
                                                children: [
                                                  Text(
                                                    '생년월일',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.white),
                                                  ),
                                                  SizedBox(width: 13),

                                                  Expanded(
                                                    child:
                                                        DropdownButtonFormField<
                                                            String>(
                                                      value: selectedMonth,
                                                      onChanged: (String? value) {
                                                        selectedMonth = value!;
                                                        // 선택한 월에 따라 일 수 동적으로 업데이트하는 로직 추가 가능
                                                        setState(() {});
                                                      },
                                                      items: List.generate(
                                                              12,
                                                              (index) =>
                                                                  (index + 1)
                                                                      .toString())
                                                          .map((String value) =>
                                                              DropdownMenuItem<
                                                                  String>(
                                                                value: value,
                                                                child: Text(
                                                                  value,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                              ))
                                                          .toList(),
                                                    ),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Expanded(
                                                    child: DropdownButtonFormField<String>(
                                                      value: selectedMonth,
                                                      onChanged: (String? value) {
                                                        selectedMonth = value!;
                                                        setState(() {});
                                                      },
                                                      items: List.generate(12, (index) => (index + 1).toString())
                                                          .map((String value) => DropdownMenuItem<String>(
                                                        value: value,
                                                        child: Text(
                                                          value,
                                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
                                                        ),
                                                      ))
                                                          .toList(),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                              */


                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Container(
                                        width: double.infinity, // 버튼의 너비를 다이얼로그 너비에 맞추기

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft:Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                        ),
                                        child: ElevatedButton(
                                          child: Text('아이디 찾기'),
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            foregroundColor: Colors.white,
                                            backgroundColor: Color(0xffE41745), // 텍스트 색상
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            _confirmId();
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );


                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '아이디 찾기',
                                  style: TS.s12w400(colorWhite),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 16),

                          Text(
                            '|',
                            style: TS.s12w400(colorWhite),
                          ),
                          SizedBox(width: 16),
                          GestureDetector(
                            onTap: () {

                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Center(
                                      child: Text('비밀번호 찾기',
                                        style: TS.s16w700(colorWhite),),
                                    ),
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    content: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        height: 223, // 원하는 높이로 설정
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Text(
                                                  '아이디를 입력하시면 회원가입 시 입력하신 이메일로',
                                                  style: TS.s10w400(colorWhite)
                                              ),
                                              Text(
                                                  '임시비밀번호를 보내드립니다',
                                                  style: TS.s10w400(colorWhite)
                                              ),

                                              SizedBox(height: 20),

                                              TextField(
                                                controller: tecId,
                                                style: TS.s12w400(colorWhite),
                                                decoration: const InputDecoration(
                                                  hintText: '아이디',
                                                  hintStyle: TS.s12w400(colorGray500),
                                                  border: OutlineInputBorder(),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: Colors.grey),
                                                    borderRadius: BorderRadius.all(Radius.circular(1.0)),
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(color: colorWhite),
                                                    borderRadius: BorderRadius.all(Radius.circular(1.0)),
                                                  ),
                                                ),
                                              ),


                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Container(
                                        width: double.infinity, // 버튼의 너비를 다이얼로그 너비에 맞추기

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft:Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                        ),
                                        child: ElevatedButton(
                                          child: Text('임시 비밀번호 전송'),
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            foregroundColor: Colors.white,
                                            backgroundColor: Color(0xffE41745), // 텍스트 색상
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            _confirmPw();
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );

                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '비밀번호 찾기',
                                  style: TS.s12w400(colorWhite),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 48),

                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 47),
                              child: ElevatedButton(
                                onPressed: () {

                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xfff2b61c),
                                  fixedSize: const Size(300, 40),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                    '카카오로 로그인',
                                    style: TS.s14w700(colorWhite)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 15),

                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 47),
                              child: ElevatedButton(
                                onPressed: () {

                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff929292),
                                  fixedSize: const Size(300, 40),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                    '비회원 로그인',
                                    style: TS.s14w700(colorWhite)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
