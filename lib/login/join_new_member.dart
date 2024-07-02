import 'package:flutter/material.dart';
import 'package:funnchallenge/login/register_under14.dart';
import 'package:funnchallenge/login/register_up14.dart';
import '../const/value/colors.dart';
import '../const/value/text_style.dart';
import '../screen/user_information.dart';

class JoinNewMember extends StatelessWidget {
  const JoinNewMember({super.key});

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

      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 204),

            const Text(
              '회원가입',
              style: TS.s24w900(colorWhite),
            ),

            const SizedBox(height: 11,),

            const Text(
              '펀앤챌린지(Fun&Challenge)에 오신 것을 환영합니다',
              style: TS.s10w600(colorWhite),
            ),

            const SizedBox(height: 150),
            //need to add logo

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
                                      '이용약관',
                                      style: TS.s16w700(colorWhite),
                                    ),
                                    const SizedBox(height: 42), // 'width'를 'height'로 수정
                                    Row(
                                      children: [
                                        Checkbox(value: false, onChanged: (value) {}), // 체크박스 추가
                                        const Text(
                                          '이용약관(필수)',
                                          style: TS.s12w700(colorWhite),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 19),
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

                                              //showdialog2
                                              showDialog(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return AlertDialog(
                                                    backgroundColor: Colors.black,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20.0),
                                                    ),
                                                    content: SizedBox(
                                                      height: 310,
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        crossAxisAlignment: CrossAxisAlignment.center, // 텍스트 왼쪽 정렬
                                                        children: [
                                                          const SizedBox(height: 49),
                                                          const Text(
                                                            '이멘트 / 혜택 알림 수신 동의',
                                                            style: TS.s16w700(colorWhite),
                                                          ),
                                                          const SizedBox(height: 17), // 'width'를 'height'로 수정
                                                          const Center(
                                                            child: Text(
                                                              '펀앤챌린지(Fun&Challenge)에서는 고객이 수집 및\n'
                                                                  '이용에 동의한 개인정보를 활용하여 전자적 전송매체\n'
                                                                  '(Push 알림/e-mail등 다양한 전송매체)를 통해이벤트 / \n'
                                                                  '혜택에 대한 개인 맞춤형 광고 정보를 전송 할 수 있습니다 \n\n'
                                                                  '회원님은 광고수신에 대한 동의를 거부하실 권리가 있으며, \n'
                                                                  '동의 거부 시에도 서비스의 이용이 가능합니다',
                                                              style: TS.s10w600(colorWhite),
                                                            ),
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

                                                                    //showdialog 3
                                                                    showDialog(
                                                                      context: context,
                                                                      builder: (BuildContext context) {
                                                                        return AlertDialog(
                                                                          backgroundColor: Colors.black,
                                                                          shape: RoundedRectangleBorder(
                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                          ),
                                                                          content: SizedBox(
                                                                            height: 170,
                                                                            child: Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.center, // 텍스트 왼쪽 정렬
                                                                              children: [
                                                                                const SizedBox(height: 49),
                                                                                const Text(
                                                                                  '고객님의 연령대를 선택해주세요',
                                                                                  style: TS.s14w700(colorWhite),
                                                                                ),

                                                                                const SizedBox(height: 34), // 'width'를 'height'로 수정

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
                                                                                          Navigator.push(
                                                                                            context,
                                                                                            MaterialPageRoute(builder: (context) => RegisterUnder14()),
                                                                                          );
                                                                                        },
                                                                                        child: const Text(
                                                                                          '만 14세 미만',
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
                                                                                          Navigator.push(
                                                                                            context,
                                                                                            MaterialPageRoute(builder: (context) => const RegisterUp14()),
                                                                                          );
                                                                                        },
                                                                                        child: const Text(
                                                                                          '만 14세 이상',
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
                        backgroundColor: const Color(0xffe41745),
                        fixedSize: const Size(300, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text(
                          '이메일 아이디로 가입하기',
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
                        backgroundColor: const Color(0xfff2b61c),
                        fixedSize: const Size(300, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: const Text(
                          '카카오 계정으로 로그인',
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
    );
  }
}
