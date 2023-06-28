import 'package:ex4/next_page.dart';
import 'package:flutter/material.dart';

import 'model/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _idController = TextEditingController();
  TextEditingController _pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Ex4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 250,
              child: TextField(
                controller: _idController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Login ID',
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: TextField(
                controller: _pwController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                goLogin();
              },
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.greenAccent,
                ),
                child: Center(child: Text('Login')),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void goLogin() {
    print('go login');
    print('id: ${_idController.text}');
    print('pw: ${_pwController.text}');
    //validation check
    if(_idController.text.isEmpty || _pwController.text.isEmpty) {
      print('id와 pw를 입력해주세요');
      return;
    }

    loginRequest(_idController.text, _pwController.text);
  }

  //서버와 통신합니다
  void loginRequest(String id, String pw) {
    if(id == "oojoo" && pw == "1234") {
      print('로그인 성공');
      //get from server
      User loginUser = User("oojoo", "oojooteam@gmail.com", "010-1234-5678");
      callbackResponse(loginUser);
    } else {
      print('로그인 실패');
    }
  }

  void callbackResponse(User user) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                NextPageWidget(_idController.text, _pwController.text))
    );
  }
}
