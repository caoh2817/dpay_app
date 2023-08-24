import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _isLoginSelected = true;

  void _toggleSelected(bool isLogin) {
    setState(() {
      _isLoginSelected = isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              size: 30,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 47),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 129,
                    height: 53.09,
                    child: Image(image: AssetImage('assets/images/logo.png'))),
              ],
            ),
            const SizedBox(height: 38),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _toggleSelected(true),
                  style: ElevatedButton.styleFrom(
                      primary: _isLoginSelected ? Colors.blue : null),
                  child: const Text('登录'),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () => _toggleSelected(false),
                  style: ElevatedButton.styleFrom(
                      primary: !_isLoginSelected ? Colors.blue : null),
                  child: const Text('注册'),
                ),
              ],
            ),
            const SizedBox(height: 38),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: FadeTransition(
                opacity: const AlwaysStoppedAnimation(1),
                child: Container(
                  height: 116,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: _isLoginSelected
                      ? const Center(key: Key('login'), child: Text('登录内容'))
                      : const Center(key: Key('register'), child: Text('注册内容')),
                ),
              ),
            ),
          ],
        ));
  }
}
