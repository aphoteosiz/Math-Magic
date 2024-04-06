import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String id = 'login_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0x7DFE0000),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Math \nMagic".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Impact',
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Registrarse',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Iniciar Sesion',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
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
          ))),
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
        child: Text('Registrarme', style: TextStyle(
          color: Colors.white,
          fontSize: 20.0),

        ,),
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