import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'features/auth/screens/login_screen.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: SizedBox(
        width: double.infinity, // 가로를 꽉 채우기
        height: 60, // 버튼의 높이
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFFE812), // 카카오 노란색 배경
            foregroundColor: Colors.black87,    // 텍스트 및 아이콘 색상
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // 완전히 둥근 모서리
            ),
            elevation: 0, // 입체감 제거 (이미지처럼 평면적인 느낌)
          ),
          onPressed: () {},
          child: Row(
            children: [
              // 왼쪽 아이콘 영역
              Icon(Icons.chat_bubble, size: 24),

              // 텍스트를 중앙에 맞추기 위한 여백
              Expanded(
                child: Center(
                  child: Text(
                    '카카오톡으로 시작',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // 오른쪽 대칭을 맞추기 위한 투명 아이콘 (텍스트를 정중앙으로 밀어줌)
              Opacity(
                opacity: 0,
                child: Icon(Icons.chat_bubble, size: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}