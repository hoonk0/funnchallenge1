import 'package:flutter/material.dart';
import 'package:funnchallenge/login/join_new_member.dart';
import 'package:funnchallenge/login/no_member.dart';
import 'package:funnchallenge/screen/user_information.dart';
import 'package:sizer/sizer.dart';


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

  String? selectedYear;
  String? selectedMonth;
  String? selectedDay;

  List<String> years = List.generate(50, (index) => (2024 - index).toString());
  List<String> months = List.generate(12, (index) => (index + 1).toString().padLeft(2, '0'));
  List<String> days = List.generate(31, (index) => (index + 1).toString().padLeft(2, '0'));

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    tecId.dispose();
    tecPw.dispose();
    tecName.dispose();

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
            content: SizedBox(
              height: 152,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                        '아이디 찾기',
                        style: TS.s16w700(colorWhite)
                    ),

                    const SizedBox(width: 15),

                    const Text(
                      '해당 이름 또는 이메일로 등록한 계정이 없습니다',
                      style: TS.s10w600(colorWhite)
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: const Color(0xffE41745),
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
                            child: const Text(
                                '회원가입 하기',
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
                              )
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                                '다시 찾기',
                            style: TS.s14w700(colorWhite),
                            ),
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
            content: SizedBox(
              height: 252,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                        '아이디 찾기',
                        style: TS.s16w700(colorWhite)
                    ),

                    const SizedBox(width: 15),

                    const Text(
                        '회원님의 아이디는 아래와 같습니다',
                        style: TS.s10w600(colorWhite)
                    ),

                    const SizedBox(height: 32),

                    const Text(
                        'daba@gmail.com',
                        style: TS.s24w900(colorVolcano600)
                    ),

                    const SizedBox(height: 32),


                    SizedBox(
                        width: double.infinity, //
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xffE41745),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();

                        },
                        child: const Text(
                          '확인',
                          style: TS.s14w700(colorWhite),
                        ),
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
            content: SizedBox(
              height: 152,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                        '비밀번호 찾기',
                        style: TS.s16w700(colorWhite)
                    ),

                    const SizedBox(width: 15),

                    const Text(
                        '존재하지 않는 아이디입니다',
                        style: TS.s10w600(colorWhite)
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: const Color(0xffE41745),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              '아이디 찾기',
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
                                )
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              '다시 찾기',
                              style: TS.s14w700(colorWhite),
                            ),
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
            content: SizedBox(
              height: 252,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                        '비밀번호 찾기',
                        style: TS.s16w700(colorWhite)
                    ),

                    const SizedBox(width: 15),

                    const Text(
                        '임시 비밀번호가 전송되었습니다',
                        style: TS.s10w600(colorWhite)
                    ),

                    const SizedBox(height: 17),

                    SizedBox(
                      width: double.infinity, //
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xffE41745),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();

                        },
                        child: const Text(
                          '확인',
                          style: TS.s14w700(colorWhite),
                        ),
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
              const SizedBox(width: 30)
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
                  const Text(
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
                          style: const TS.s12w400(colorWhite),
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
                          style: const TS.s12w400(colorWhite),
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
                                        content: const SizedBox(
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
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10.0),
                                                bottomRight: Radius.circular(10.0),
                                                topLeft:Radius.circular(10.0),
                                                topRight: Radius.circular(10.0),
                                              ),
                                            ),
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.white,
                                                backgroundColor: const Color(0xffE41745), // 텍스트 색상
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('확인'),
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
                          const SizedBox(width: 16),
                          const Text(
                            '|',
                            style: TS.s12w400(colorWhite),
                          ),
                          const SizedBox(width: 16),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Center(
                                      child: Text('아이디 찾기',
                                        style: TS.s16w700(colorWhite),),
                                    ),
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    content: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: SizedBox(
                                        height: 262, // 원하는 높이로 설정
                                        child: Center(
                                          child: Column(
                                            children: [
                                              const Text(
                                                  '아이디는 가입 시 입력하신 이메일을 통해 찾을 수 있습니다',
                                                  style: TS.s10w400(colorWhite)
                                              ),

                                              const SizedBox(height: 20),

                                              TextField(
                                                controller: tecName,
                                                style: const TS.s12w400(colorWhite),
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

                                              const SizedBox(height: 20),

                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 15.w,
                                                    child: const Text(
                                                      '생년월일',
                                                      style: TS.s12w700(colorWhite),
                                                    ),
                                                  ),

                                                  Expanded(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(color: Colors.white),
                                                        borderRadius: BorderRadius.circular(10.0),

                                                      ),
                                                      child: DropdownButton<String>(
                                                        value: years.contains(selectedYear) ? selectedYear : null,
                                                        hint: const Text('  연도', style: TS.s10w400(colorWhite)),
                                                        isExpanded: true,
                                                        items: years.map((String value) {
                                                          return DropdownMenuItem<String>(
                                                            value: value,
                                                            child: Padding(
                                                              padding: const EdgeInsets.all(1.0),
                                                              child: Text(value, style: const TS.s10w400(colorWhite)),
                                                            ),
                                                          );
                                                        }).toList(),
                                                        onChanged: (newValue) {
                                                          setState(() {
                                                            selectedYear = newValue;
                                                          });
                                                        },
                                                        dropdownColor: Colors.grey[800], // 드롭다운 배경 색상
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Expanded(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(color: Colors.white),
                                                        borderRadius: BorderRadius.circular(10.0),
                                                      ),
                                                      child: DropdownButton<String>(
                                                        value: selectedMonth,
                                                        hint: const Text('  월', style: TS.s10w400(colorWhite)),
                                                        isExpanded: true,
                                                        items: months.map((String value) {
                                                          return DropdownMenuItem<String>(
                                                            value: value,
                                                            child: Padding(
                                                              padding: const EdgeInsets.all(6.0),
                                                              child: Text(value, style: const TS.s10w400(colorWhite)),
                                                            ),
                                                          );
                                                        }).toList(),
                                                        onChanged: (newValue) {
                                                          setState(() {
                                                            selectedMonth = newValue;
                                                          });
                                                        },
                                                        dropdownColor: Colors.grey[800], // 드롭다운 배경 색상
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 8),
                                                  Expanded(
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(color: Colors.white),
                                                        borderRadius: BorderRadius.circular(10.0),

                                                      ),
                                                      child: DropdownButton<String>(
                                                        value: days.contains(selectedDay) ? selectedDay : null,
                                                        hint: const Text('  일', style: TS.s10w400(colorWhite)),
                                                        isExpanded: true,
                                                        items: days.map((String value) {
                                                          return DropdownMenuItem<String>(
                                                            value: value,
                                                            child: Padding(
                                                              padding: const EdgeInsets.all(6.0),
                                                              child: Text(value, style: const TS.s12w400(colorWhite)),
                                                            ),
                                                          );
                                                        }).toList(),
                                                        onChanged: (newValue) {
                                                          setState(() {
                                                            selectedDay = newValue;
                                                          });
                                                        },
                                                        dropdownColor: Colors.grey[800], // 드롭다운 배경 색상
                                                      ),
                                                    ),
                                                  ),


                                                ],
                                              ),


                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Container(
                                        width: double.infinity, // 버튼의 너비를 다이얼로그 너비에 맞추기

                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft:Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            foregroundColor: Colors.white,
                                            backgroundColor: const Color(0xffE41745), // 텍스트 색상
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            _confirmId();
                                          },
                                          child: const Text('아이디 찾기'),
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

                          const SizedBox(width: 16),

                          const Text(
                            '|',
                            style: TS.s12w400(colorWhite),
                          ),
                          const SizedBox(width: 16),
                          GestureDetector(
                            onTap: () {

                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Center(
                                      child: Text('비밀번호 찾기',
                                        style: TS.s16w700(colorWhite),),
                                    ),
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    content: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: SizedBox(
                                        height: 223, // 원하는 높이로 설정
                                        child: Center(
                                          child: Column(
                                            children: [
                                              const Text(
                                                  '아이디를 입력하시면 회원가입 시 입력하신 이메일로',
                                                  style: TS.s10w400(colorWhite)
                                              ),
                                              const Text(
                                                  '임시비밀번호를 보내드립니다',
                                                  style: TS.s10w400(colorWhite)
                                              ),

                                              const SizedBox(height: 20),

                                              TextField(
                                                controller: tecId,
                                                style: const TS.s12w400(colorWhite),
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

                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0),
                                            topLeft:Radius.circular(10.0),
                                            topRight: Radius.circular(10.0),
                                          ),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            foregroundColor: Colors.white,
                                            backgroundColor: const Color(0xffE41745), // 텍스트 색상
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            _confirmPw();
                                          },
                                          child: const Text('임시 비밀번호 전송'),
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

                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                        ),
                                        content: SizedBox(
                                          height: 550,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.start, // 텍스트 왼쪽 정렬
                                            children: [
                                              const SizedBox(height: 49),
                                              const Text(
                                                '비회원 로그인',
                                                style: TS.s16w700(colorWhite),
                                              ),
                                              const SizedBox(height: 42), // 'width'를 'height'로 수정

                                              const Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [

                                                  Text(
                                                    '비회원 로그인 시 알아두세요',
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight: FontWeight.w600,
                                                      color: colorWhite,
                                                    ),
                                                  ),
                                                  Text(
                                                    '비회원 로그인 이용은 만 14세 이상 사용자만 가능합니다',
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight: FontWeight.w600,
                                                      color: colorWhite,
                                                    ),
                                                  ),
                                                  Text(
                                                    '포인트 적립, 리포트 제공 등 일반회원 혜택을 받으실 수 없습니다',
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight: FontWeight.w600,
                                                      color: colorWhite,
                                                    ),
                                                  ),

                                                ],
                                              ),


                                              const SizedBox(height: 42),
                                              Row(
                                                children: [
                                                  Checkbox(value: false, onChanged: (value) {}), // 체크박스 추가
                                                  const Text(
                                                    '개인정보처리방침(필수)',
                                                    style: TS.s12w700(colorWhite),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 19),
                                              Row(
                                                children: [
                                                  Checkbox(value: false, onChanged: (value) {}), // 체크박스 추가
                                                  const Text(
                                                    '이벤트/혜택 알림 수신 동의(선택)',
                                                    style: TS.s12w700(colorWhite),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 31),

                                              const Divider(color: Colors.grey),
                                              // 가로선 추가
                                              const SizedBox(height: 31),

                                              Row(
                                                children: [
                                                  Checkbox(value: false, onChanged: (value) {}), // 체크박스 추가
                                                  const Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        '전체동의',
                                                        style: TS.s12w700(colorWhite),
                                                      ),
                                                      Text(
                                                        '(선택) 이벤트/선택알림을 포함하여 모두 동의합니다',
                                                        style: TS.s10w400(colorWhite),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 34),
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
                                                        Navigator.of(context).pop();

                                                        showDialog(
                                                          context: context,
                                                          builder: (BuildContext context) {
                                                            return AlertDialog(
                                                              backgroundColor: Colors.black,
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.circular(20.0),
                                                              ),
                                                              content: SizedBox(
                                                                height: 350,
                                                                child: Column(
                                                                  mainAxisSize: MainAxisSize.min,
                                                                  crossAxisAlignment: CrossAxisAlignment.center, // 텍스트 왼쪽 정렬
                                                                  children: [
                                                                    const SizedBox(height: 49),
                                                                    const Text(
                                                                      '이벤트/혜택 알림 수신 동의',
                                                                      style: TS.s16w700(colorWhite),
                                                                    ),
                                                                    const SizedBox(height: 42), // 'width'를 'height'로 수정

                                                                    const Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                      children: [

                                                                        Text(
                                                                          '펀앤챌린지(Fun&Challenge)에서는 고객이 수집 및 이용\n에 동의한 개인정보를 활용하여 전자적 전송매체(Push 알\n림/e-mail등 다양한 전송매체)를 통해 이벤트 / 혜택에 \n대한 개인 맞춤형 광고 정보를 전송 할 수 있습니다 \n\n\n회원님은 광고수신에 대한 동의를 거부하실 권리가 있으며, 동의 거부 시에도 서비스의 이용이 가능합니다',
                                                                          style: TextStyle(
                                                                            fontSize: 10,
                                                                            fontWeight: FontWeight.w600,
                                                                            color: colorWhite,
                                                                          ),
                                                                        ),

                                                                      ],
                                                                    ),

                                                                    const SizedBox(height: 34),
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
                                                                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NoMember()));
                                                                            },
                                                                            child: const Text(
                                                                              '다음',
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
                                                        '다음',
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
