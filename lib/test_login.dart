import 'package:flutter/material.dart';
import 'utils/netword_utils.dart';

class TestLoginPage extends StatefulWidget {
  @override
  _TestLoginPageState createState() => _TestLoginPageState();
}

class _TestLoginPageState extends State<TestLoginPage> {
  TextEditingController _emailController, _passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = new TextEditingController();
    _passwordController = new TextEditingController();
  }

  _signIn(BuildContext context) async {
    print(_emailController.text);
    print(_passwordController.text);
    var responseJson = await NetworkUtils.authenticateUser(
        _emailController.text, _passwordController.text);
    print(responseJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextFormField(
               controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'What do people call you?',
                labelText: 'Phone number',
                
              ),
            ),
            TextFormField(
               controller: _passwordController,
              decoration: const InputDecoration(
                hintText: 'What do people call you?',
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              width: double.infinity,
              child: RaisedButton(
                  onPressed: () {
                    _signIn(context);
                  },
                  color: Colors.orange,
                  textColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "Submit",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
