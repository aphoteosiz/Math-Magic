import 'package:flutter/material.dart';
import 'package:math_magic/src/pages/Home.dart';
import 'package:math_magic/Auth_service.dart';
import 'package:math_magic/src/pages/ResetPassword.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService authService = AuthService();
  bool selectLogin = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color.fromARGB(206, 254, 207, 0),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Image.asset('lib/assets/images/Logo.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectLogin = false;
                      });
                    },
                    child: Text(
                      'Registrarse',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectLogin = true;
                      });
                    },
                    child: Text(
                      'Iniciar Sesión',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              selectLogin ? _columnLogin() : _columnSignUp(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _columnLogin() {
    return Column(
      children: [
        SizedBox(
          height: 15.0,
        ),
        _textFieldEmailLogin(),
        SizedBox(
          height: 15.0,
        ),
        _textFieldPasswordLogin(),
        SizedBox(
          height: 15.0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ForgotPasswordPage()),
            );
          },
          child: Text(
            'Olvidé mi contraseña',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        _buttonLogin(),
      ],
    );
  }

  Widget _columnSignUp() {
    return Column(
      children: [
        SizedBox(
          height: 15.0,
        ),
        _textFielName(),
        SizedBox(
          height: 15.0,
        ),
        _textFieldEmail(),
        SizedBox(
          height: 15.0,
        ),
        _textFieldPassword(),
        SizedBox(
          height: 15.0,
        ),
        _buttonSignUp(),
      ],
    );
  }

  Widget _textFielName() {
    return _textFieldGeneral(
      labelText: 'Nombre',
      controller: nameController,
      hintText: '@nombre @apellido',
      keyboardType: TextInputType.text,
      icon: Icons.person_2_outlined,
    );
  }

  Widget _textFieldEmail() {
    return _textFieldGeneral(
      labelText: 'Email',
      controller: emailController,
      hintText: 'example@test.com',
      keyboardType: TextInputType.emailAddress,
      icon: Icons.email_outlined,
    );
  }

  Widget _textFieldPassword() {
    return _textFieldGeneral(
      labelText: 'Contraseña',
      controller: passwordController,
      hintText: 'Contraseña',
      keyboardType: TextInputType.visiblePassword,
      icon: Icons.lock_outline,
      obscureText: true,
    );
  }

  Widget _buttonSignUp() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffFF6969),
        padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
      ),
      onPressed: () {
        authService.registerUser(
          nameController.text,
          emailController.text,
          passwordController.text,
        ).then((registered) {
          if(registered){
            setState(() {
              selectLogin=true;
            });
            } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error al registrar usuario'))
              );
          }
      });
  },
  
      child: Text(
        'Registrarme',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }

  Widget _textFieldEmailLogin() {
    return _textFieldGeneral(
      labelText: 'Email',
      controller: emailController,
      hintText: 'Email',
      keyboardType: TextInputType.emailAddress,
      icon: Icons.email_outlined,
    );
  }

  Widget _textFieldPasswordLogin() {
    return _textFieldGeneral(
      labelText: 'Contraseña',
      controller: passwordController,
      hintText: 'Contraseña',
      keyboardType: TextInputType.visiblePassword,
      icon: Icons.lock_outline,
      obscureText: true,
    );
  }

  Widget _buttonLogin() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffFF6969),
        padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
      ),
      onPressed: () {
        authService.loginUser(emailController.text, passwordController.text)
            .then((loggedIn) {
          if (loggedIn) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          }
        });
      },
      child: Text(
        'Iniciar Sesión',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }

  Widget _textFieldGeneral({
    required String labelText,
    required TextEditingController controller,
    required String hintText,
    required TextInputType keyboardType,
    required IconData icon,
    bool obscureText = false,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
