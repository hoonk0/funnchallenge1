import 'package:flutter/material.dart';
import 'package:funnchallenge/route/route_login.dart';
import 'package:sizer/sizer.dart';

import '../const/value/colors.dart';
import '../const/value/text_style.dart';
import '../screen/user_information.dart';

class RegisterUnder14 extends StatefulWidget {
  const RegisterUnder14({super.key});

  @override
  State<RegisterUnder14> createState() => _RegisterUnder14State();
}

class _RegisterUnder14State extends State<RegisterUnder14> {
  final TextEditingController tecEmailId = TextEditingController();
  final TextEditingController tecPw = TextEditingController();
  final TextEditingController tecPwAgain = TextEditingController();
  final TextEditingController tecName = TextEditingController();

  final TextEditingController tecLegalName = TextEditingController();
  final TextEditingController tecEmail = TextEditingController();
  final TextEditingController tecPhone = TextEditingController();

  String? selectedYear;
  String? selectedMonth;
  String? selectedDay;
  String? selectedYearLegal;
  String? selectedMonthLegal;
  String? selectedDayLegal;

  List<String> years = List.generate(50, (index) => (2024 - index).toString());
  List<String> months = List.generate(12, (index) => (index + 1).toString().padLeft(2, '0'));
  List<String> days = List.generate(31, (index) => (index + 1).toString().padLeft(2, '0'));

  String gender = '남';
  String genderLegal = '남';

  @override
  void dispose() {
    tecEmailId.dispose();
    tecPw.dispose();
    tecPwAgain.dispose();
    tecName.dispose();
    tecLegalName.dispose();
    tecEmail.dispose();
    tecPhone.dispose();
    super.dispose();
  }

  void _register() {
    if (tecEmailId.text.isNotEmpty &&
        tecPw.text.isNotEmpty &&
        tecPwAgain.text.isNotEmpty &&
        tecName.text.isNotEmpty &&
        selectedYear != null &&
        selectedMonth != null &&
        selectedDay != null &&
        tecLegalName.text.isNotEmpty &&
        tecEmail.text.isNotEmpty &&
        selectedYearLegal != null &&
        selectedMonthLegal != null &&
        selectedDayLegal != null) {
      _showDialog('회원가입이 완료되었습니다', success: true);
    } else {
      _showDialog('항목을 모두 입력해주세요');
    }
  }

  void _showDialog(String message, {bool success = false}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          content: SizedBox(
            height: 100,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  message,
                  style: TS.s14w700(colorWhite),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          if (success) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const RouteLogin()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffE41745),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
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
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UserInformation()),
                  );
                },
                icon: const Icon(Icons.person_2_outlined),
                color: colorWhite,
              ),
              IconButton(
                onPressed: () async {
                  // Need to make drawer menu
                },
                icon: const Icon(Icons.menu),
                color: colorWhite,
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  '회원가입 | 만 14세 미만',
                  style: TS.s16w700(colorWhite),
                ),
              ),

              const SizedBox(height: 18),

              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    child: const Text(
                      '아이디',
                      style: TS.s12w700(colorWhite),
                    ),
                  ),

                  const SizedBox(width: 20,),

                  Expanded(
                    child: TextField(
                      controller: tecEmailId,
                      style: const TS.s12w400(colorWhite),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                        hintText: '이메일 주소를 입력하세요',
                        hintStyle: TS.s10w400(colorWhite),
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
                ],
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    child: const Text(
                      '비밀번호',
                      style: TS.s12w700(colorWhite),
                    ),
                  ),

                  const SizedBox(width: 20,),

                  Expanded(
                    child: TextField(
                      controller: tecPw,
                      style: const TS.s10w400(colorWhite),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                        hintText: '8~15자 영문, 숫자, 특수문자 조합',
                        hintStyle: TS.s10w400(colorWhite),
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
                ],
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    child: const Text(
                      '비밀번호 확인',
                      style: TS.s12w700(colorWhite),
                    ),
                  ),

                  const SizedBox(width: 20,),

                  Expanded(
                    child: TextField(
                      controller: tecPwAgain,
                      style: const TS.s12w400(colorWhite),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                        hintText: '비밀번호를 다시 한번 입력하세요',
                        hintStyle: TS.s10w400(colorWhite),
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
                ],
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    child: const Text(
                      '이름',
                      style: TS.s12w700(colorWhite),
                    ),
                  ),

                  const SizedBox(width: 20,),

                  Expanded(
                    child: TextField(
                      controller: tecName,
                      style: const TS.s12w400(colorWhite),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                        hintText: '이름을 입력하세요',
                        hintStyle: TS.s10w400(colorWhite),
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
                ],
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    child: const Text(
                      '생년월일',
                      style: TS.s12w700(colorWhite),
                    ),
                  ),

                  const SizedBox(width: 20,),

                  Expanded(
                    child: DropdownButton<String>(
                      value: selectedYear,
                      hint: const Text('연도', style: TS.s10w400(colorWhite)),
                      isExpanded: true,
                      items: years.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: const TS.s12w400(colorWhite)),
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
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButton<String>(
                      value: selectedMonth,
                      hint: const Text('월', style: TS.s10w400(colorWhite)),
                      isExpanded: true,
                      items: months.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: const TS.s12w400(colorWhite)),
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
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButton<String>(
                      value: selectedDay,
                      hint: const Text('일', style: TS.s10w400(colorWhite)),
                      isExpanded: true,
                      items: days.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: const TS.s12w400(colorWhite)),
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


                ],
              ),

          const SizedBox(height: 8),

              Row(
                children: [
                  const SizedBox(
                    width: 80, // 고정된 너비로 설정
                    child: Text(
                      '성별',
                      style: TS.s12w700(colorWhite),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: RadioListTile<String>(
                            title: const Text('남', style: TS.s12w400(colorWhite)),
                            value: '남',
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            },
                            activeColor: Colors.white,
                            selected: gender == '남',

                          ),
                        ),
                        Expanded(
                          child: RadioListTile<String>(
                            title: const Text('여', style: TS.s12w400(colorWhite)),
                            value: '여',
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            },
                            activeColor: Colors.white,
                            selected: gender == '여',

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(width: 24),

              const Divider(color: Colors.grey),

              const Center(
                child: Text(
                  '고객님은 만 14세 미만 청소년으로 개인정보보호법 제39조의 3에 의거하',
                  style: TS.s10w600(colorWhite),
                ),
              ),
              const Center(
                child: Text(
                  '여 법정대리인의 동의 절차를 거치셔야 합니다',
                  style: TS.s10w600(colorWhite),
                ),
              ),

              const SizedBox(height: 4),

              const Center(
                child: Text(
                  '법정대리인 정보',
                  style: TS.s16w700(colorWhite),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    child: const Text(
                      '이름',
                      style: TS.s12w700(colorWhite),
                    ),
                  ),

                  const SizedBox(width: 20,),

                  Expanded(
                    child: TextField(
                      controller: tecLegalName,
                      style: const TS.s12w400(colorWhite),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                        hintText: '이름을 입력하세요',
                        hintStyle: TS.s10w400(colorWhite),
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
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    child: const Text(
                      '이메일',
                      style: TS.s12w700(colorWhite),
                    ),
                  ),

                  const SizedBox(width: 20,),

                  Expanded(
                    child: TextField(
                      controller: tecEmail,
                      style: const TS.s12w400(colorWhite),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                        hintText: '이메일 주소를 입력하세요',
                        hintStyle: TS.s10w400(colorWhite),
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
                ],
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '입력하신 이메일 주소로 인증메일이 발송됩니다.',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w700,
                            color: colorWhite
                        ),
                      ),
                      Text(
                        '수신메일을 확인하시고 인증을 완료해 주세요',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w700,
                          color: colorWhite
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: const Color(0xffE41745),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          )
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
                                height: 280,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center, // 텍스트 왼쪽 정렬
                                  children: [
                                    const SizedBox(height: 38),
                                    const Column(
                                      children: [
                                        Text(
                                          '인증요청 메일이 발송되었습니다.',
                                          style: TS.s10w600(colorWhite),
                                        ),
                                        Text(
                                          '수신 메일을 확인하시고 인증 절차를 완료해주세요.',
                                          style: TS.s10w600(colorWhite),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '메일 수신이 안되시는 분은 인증메일을 재요청해주세요',
                                          style: TS.s10w600(colorWhite),
                                        ),
                                      ],
                                    ),


                                    const SizedBox(height: 31),

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
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              '인증 메일 재요청하기',
                                              style: TS.s14w700(colorWhite),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 44),

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
                                              Navigator.of(context).pop();
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
                                                )
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              '인증 확인',
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
                        '인증요청',
                        style: TS.s10w600(colorWhite),
                      )
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    child: const Text(
                      '생년월일',
                      style: TS.s12w700(colorWhite),
                    ),
                  ),

                  const SizedBox(width: 20,),

                  Expanded(
                    child: DropdownButton<String>(
                      value: selectedYearLegal,
                      hint: const Text('연도', style: TS.s10w400(colorWhite)),
                      isExpanded: true,
                      items: years.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: const TS.s12w400(colorWhite)),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedYearLegal = newValue;
                        });
                      },
                      dropdownColor: Colors.grey[800], // 드롭다운 배경 색상
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButton<String>(
                      value: selectedMonthLegal,
                      hint: const Text('월', style: TS.s10w400(colorWhite)),
                      isExpanded: true,
                      items: months.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: const TS.s12w400(colorWhite)),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedMonthLegal = newValue;
                        });
                      },
                      dropdownColor: Colors.grey[800], // 드롭다운 배경 색상
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButton<String>(
                      value: selectedDayLegal,
                      hint: const Text('일', style: TS.s10w400(colorWhite)),
                      isExpanded: true,
                      items: days.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: const TS.s12w400(colorWhite)),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedDayLegal = newValue;
                        });
                      },
                      dropdownColor: Colors.grey[800], // 드롭다운 배경 색상
                    ),
                  ),


                ],
              ),

              const SizedBox(height: 8),

              Row(
                children: [
                  const SizedBox(
                    width: 80, // 고정된 너비로 설정
                    child: Text(
                      '성별',
                      style: TS.s12w700(colorWhite),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: RadioListTile<String>(
                            title: const Text('남', style: TS.s12w400(colorWhite)),
                            value: '남',
                            groupValue: genderLegal,
                            onChanged: (value) {
                              setState(() {
                                genderLegal = value!;
                              });
                            },
                            activeColor: Colors.white,
                            selected: genderLegal == '남',

                          ),
                        ),
                        Expanded(
                          child: RadioListTile<String>(
                            title: const Text('여', style: TS.s12w400(colorWhite)),
                            value: '여',
                            groupValue: genderLegal,
                            onChanged: (value) {
                              setState(() {
                                genderLegal = value!;
                              });
                            },
                            activeColor: Colors.white,
                            selected: genderLegal == '여',

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 38,),

              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xffE41745),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),

                        onPressed: _register,

                        child: const Text(
                            '가입하기',
                            style: TS.s14w700(colorWhite)
                        ),



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
  }
}
