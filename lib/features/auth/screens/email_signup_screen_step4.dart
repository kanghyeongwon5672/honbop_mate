import 'package:daum_postcode_search/daum_postcode_search.dart';
import 'package:flutter/material.dart';
import 'address_search_page.dart';

class EmailSignUpScreenStep4 extends StatefulWidget {
  const EmailSignUpScreenStep4({Key? key}) : super(key: key);

  @override
  State<EmailSignUpScreenStep4> createState() => _EmailSignUpScreenStep4State();
}

class _EmailSignUpScreenStep4State extends State<EmailSignUpScreenStep4> {
  String _address = '주소 검색 버튼을 눌러주세요.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이메일로 가입 (4/4)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddressSearchPage()),
                );

                if (result != null && result is DataModel) {
                  setState(() {
                    _address = result.roadAddress ?? result.jibunAddress ?? '주소 없음';
                  });
                }
              },
              child: const Text('주소 검색'),
            ),
            const SizedBox(height: 16),
            Text(
              '선택된 주소:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              _address,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('이전'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement sign up completion logic
                      // e.g., send all data to backend
                    },
                    child: const Text('회원가입 완료'),
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
