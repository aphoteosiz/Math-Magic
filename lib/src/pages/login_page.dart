
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_magic/src/pages/ResetPassword.dart';


class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool selectLogin=false;
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(206, 254, 207, 0),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0),
             child:  Image.asset('lib/assets/images/Logo.png'),
               ),        //
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap:() {
                        setState(() {
                          selectLogin = true;
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
                      onTap:() {
                        setState(() {
                         selectLogin=false;
                        });
                      },
                      child: Text(
                      'Iniciar Sesion',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                     ),
                    ),
                ],
              ),
              (selectLogin) ? _columnSingUp() : _columnLogin(), //operador ternario
               
              
            ],
              ),
              // child: SizedBox(
              //   height: 35.0,
              ),// 
      ),
    );
    
  }
 

  Widget _textFielName() {
    return _textFieldGeneral(
      labelText: 'Nombre',
       onChanged: (value)=>{},
       hintText: '@nombre @apellido',
        keyboardType: TextInputType.text, icon: Icons.person_2_outlined,
          );
  }

  Widget _textFieldEmail() {
    return _textFieldGeneral(labelText: 'email',
       onChanged: (value)=>{},
       hintText: 'Example@test.com',
        keyboardType: TextInputType.emailAddress, icon: Icons.email_outlined,);
  }

  Widget _textFieldPassword() {
    return _textFieldGeneral(
      labelText: 'Contraseña', 
      hintText: 'Contraseña', 
      onChanged:(value)=>{}, 
      keyboardType: TextInputType.visiblePassword, 
      icon: Icons.lock_outline,
      obscureText: true,
      );
      
  }

     Widget _buttonSingUp() {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFF6969),
          padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
          ),
        
        onPressed: (){ 
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
     
        Widget _columnSingUp(){
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
          _buttonSingUp(),

          ],
        );
        }
        Widget _columnLogin(){
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
            MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
          );
        },
            
              child: Text(
                'olvide mi contraseña',
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
              _buttonLogin()
            ],
          );
        }
       
        Widget _textFieldEmailLogin(){
          return _textFieldGeneral(
            labelText: 'Email', 
            onChanged: (value)=>{},
             hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
               icon: Icons.email_outlined,
              );
        }
         Widget _textFieldPasswordLogin(){
          return _textFieldGeneral(
           labelText: 'password',
       onChanged: (value)=>{},
       hintText: 'Password',
       keyboardType: TextInputType.visiblePassword,
               icon: Icons.lock_outline, 
               obscureText: true,);
        }
        
          _buttonLogin() {
            return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xffFF6969),
      padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
    ),
    onPressed: (){ 
      
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
          }
        

        
        
      


// ignore: camel_case_types
class _textFieldGeneral extends StatefulWidget {
 final String labelText;
  final String hintText;
  final IconData? icon;
final Function onChanged;
final TextInputType keyboardType;
final bool obscureText;

  const _textFieldGeneral({
    required this.labelText, 
  required this.onChanged,
   required this.hintText,
     required this.keyboardType,
      required this.icon, 
       this.obscureText=false,
     });

  @override
  State<_textFieldGeneral> createState() => _textFieldGeneralState();
}

class _textFieldGeneralState extends State<_textFieldGeneral> {
  @override
  Widget build(BuildContext context) {
    return  Container(
    margin: EdgeInsets.symmetric(
        horizontal: 30.0,
        ),
        decoration: BoxDecoration(
        color: Colors.white,    
          borderRadius: BorderRadius.circular(10),
        ),
      child: TextField(
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon),
        labelText: widget.labelText,
        hintText: widget.hintText,
       
      ),
      onChanged: (value) =>{},
      ),
    );
  }
}

