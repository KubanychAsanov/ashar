import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authentication_service.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: SafeArea(
                  child: Center(
                      child: Text('Ashar.App',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)))),
            ),
            Expanded(
              flex: 6,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                            labelText: 'Логин',
                            errorMaxLines: 3,
                            // TODO: show the local country code instead as a placeholder.
                            hintText: 'example@gmail.com',
                            fillColor: Color(0xFFF2F2F7),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            )),

                        keyboardType: TextInputType.emailAddress,
                        // onChanged: onInputChange,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Password TextField
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                            labelText: 'Пароль',
                            errorMaxLines: 3,
                            fillColor: Color(0xFFF2F2F7),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide.none,
                            )),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        // onChanged: onInputChange,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          padding: EdgeInsets.all(10),
                          child: Text('Кирүү'),
                          color: Color(0xFF8540F5),
                          disabledColor: Color.fromRGBO(108, 124, 207, 1),
                          textColor: Colors.white,

                          onPressed: () {
                            context.read<AuthenticationService>().signIn(
                                  email: _emailController.text.trim(),
                                  password: _passwordController.text.trim(),
                                );
                          },
                          // onPressed: _shouldDisableSignInButton ? null : _signin,
                        ),
                      ),
                      // Forget button
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          // onPressed: _navigateToForgetPasswordPage,
                          onPressed: () {},
                          child: Text(
                            'Парольду унуттуңузбу?',
                            style: TextStyle(color: Color(0xFF518EF8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
