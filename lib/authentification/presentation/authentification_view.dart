import 'package:flutter/material.dart';
import '../../app/colors.dart';

class AuthentificationView extends StatelessWidget {
  const AuthentificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          width: _width,
          height: _height,
          padding: EdgeInsets.symmetric(horizontal: _width * (40 / 414)),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: DefaultTabController(
              length: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Container(
                    width: _width * (140 / 414),
                    child: TabBar(
                        isScrollable: true,
                        indicatorColor: AppColors.blue,
                        labelPadding: EdgeInsets.only(
                            left: 0, right: _width * (35 / 414)),
                        labelColor: AppColors.blue,
                        unselectedLabelColor: AppColors.grey,
                        tabs: [
                          Tab(
                            text: 'Login',
                          ),
                          Tab(
                            text: 'Register',
                          )
                        ]),
                  ),
                  SizedBox(
                    height: _height * (40 / 896),
                  ),
                  Container(
                    width: _width,
                    height: _height * (331 / 896),
                    child: TabBarView(
                      children: [
                        Container(
                          child: LoginForm(
                            context: context,
                          ),
                        ),
                        Container(child: RegisterForm(context: context)),
                      ],
                    ),
                  ),
                  Spacer()
                ],
              ))),
    );
  }
}

class LoginForm extends StatefulWidget {
  final BuildContext context;
  const LoginForm({Key? key, required this.context}) : super(key: key);

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(widget.context).size.height;
    final double _width = MediaQuery.of(widget.context).size.width;
    return Container(
      child: Column(
        children: [
          TextField(
            style:
                TextStyle(fontSize: _height * (16 / 896), color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(
                  fontSize: _height * (11 / 896), color: AppColors.blue),
              fillColor: AppColors.veryDarkBlue,
              filled: true,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
          SizedBox(
            height: _height * (20 / 896),
          ),
          TextField(
            obscureText: true,
            style:
                TextStyle(fontSize: _height * (16 / 896), color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(
                  fontSize: _height * (11 / 896), color: AppColors.blue),
              fillColor: AppColors.veryDarkBlue,
              filled: true,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
          SizedBox(
            height: _height * (20 / 896),
          ),
          Align(
              alignment: Alignment.centerRight,
              child: Text('forgot password?',
                  style: TextStyle(
                      color: AppColors.blue, fontSize: _height * (16 / 896)))),
          SizedBox(
            height: _height * (39 / 896),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                width: _width, height: _height * (60 / 896)),
            child: ElevatedButton(
                onPressed: () => null,
                child: Text('Login',
                    style: TextStyle(
                        color: Colors.white, fontSize: _height * (16 / 896))),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )))),
          ),
          SizedBox(
            height: _height * (30 / 896),
          ),
          RichText(
            text: TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                  color: Colors.white, fontSize: _height * (16 / 896)),
              children: const <TextSpan>[
                TextSpan(
                    text: 'Create', style: TextStyle(color: AppColors.blue)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  final BuildContext context;
  const RegisterForm({Key? key, required this.context}) : super(key: key);

  @override
  RegisterFormState createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(widget.context).size.height;
    final double _width = MediaQuery.of(widget.context).size.width;
    return Container(
      child: Column(
        children: [
          TextField(
            style:
                TextStyle(fontSize: _height * (16 / 896), color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(
                  fontSize: _height * (11 / 896), color: AppColors.blue),
              fillColor: AppColors.veryDarkBlue,
              filled: true,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
          SizedBox(
            height: _height * (20 / 896),
          ),
          TextField(
            obscureText: true,
            style:
                TextStyle(fontSize: _height * (16 / 896), color: Colors.white),
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(
                  fontSize: _height * (11 / 896), color: AppColors.blue),
              fillColor: AppColors.veryDarkBlue,
              filled: true,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
          SizedBox(
            height: _height * (39 / 896),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                width: _width, height: _height * (60 / 896)),
            child: ElevatedButton(
                onPressed: () => null,
                child: Text('Register',
                    style: TextStyle(
                        color: Colors.white, fontSize: _height * (16 / 896))),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )))),
          ),
          SizedBox(
            height: _height * (30 / 896),
          ),
          RichText(
            text: TextSpan(
              text: "Already have an account?",
              style: TextStyle(
                  color: Colors.white, fontSize: _height * (16 / 896)),
              children: const <TextSpan>[
                TextSpan(
                    text: 'Login', style: TextStyle(color: AppColors.blue)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
