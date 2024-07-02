import 'package:flutter/material.dart';
import 'package:funnchallenge/route/route_main.dart';
import 'package:sizer/sizer.dart';

import '../const/value/colors.dart';
import '../const/value/text_style.dart';
import '../screen/user_information.dart';

class NoMember extends StatefulWidget {
  const NoMember({super.key});

  @override
  State<NoMember> createState() => _RegisterUnder14State();
}

class _RegisterUnder14State extends State<NoMember> {

  final TextEditingController tecName = TextEditingController();

  String? selectedYear;
  String? selectedMonth;
  String? selectedDay;

  List<String> years = List.generate(50, (index) => (2024 - index).toString());
  List<String> months = List.generate(12, (index) => (index + 1).toString().padLeft(2, '0'));
  List<String> days = List.generate(31, (index) => (index + 1).toString().padLeft(2, '0'));

  String gender = '남';



  @override
  void dispose() {

    tecName.dispose();

    super.dispose();
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
                  '비회원 로그인',
                  style: TS.s16w700(colorWhite),
                ),
              ),

              const SizedBox(height: 18),

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

              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RouteMain()),
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
        ),
      ),
    );
  }
}
