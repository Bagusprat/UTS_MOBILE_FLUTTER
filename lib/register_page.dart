import 'package:flutter/material.dart';
import 'package:flutter_pem_mobile/login_page.dart';


class register_page  extends StatelessWidget {
  const register_page ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register Page",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800)),
               backgroundColor: Colors.red
               ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController notelpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Register',
                  style: TextStyle(
                      color: Color.fromARGB(255, 211, 116, 116),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: notelpController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nomor HP',
                ),
              ),
            ),

            Container(
                height: 75,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child:   ElevatedButton(
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                         ),

                  child: const Text('Register'),
                  onPressed: ()  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return const login_page();
                    }));
                  },
                )
            ),
        

          ],
        ));
  }
}

