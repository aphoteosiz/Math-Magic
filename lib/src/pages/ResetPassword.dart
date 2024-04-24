

import 'package:flutter/material.dart';
import 'package:math_magic/src/pages/verification.dart';



class ForgotPasswordPage extends StatelessWidget {
  
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
                child: Image.asset('lib/assets/images/Logo.png'),
              ),
              SizedBox(height: 15.0,), //
               Text(
              'Restablecer Contraseña',
                         style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    SizedBox(height: 35.0,), 
                _textFieldEmailReset(),
                SizedBox(height: 20.0,),
                _buttonEnviar(context),
              
            ],
        ),
      ),
        
          ),
        );
    
  }
  Widget _textFieldEmailReset() {
    return _textFieldReset(
      labelText: 'email',
       onChanged: (value)=>{},
       hintText: 'Example@test.com',
        keyboardType: TextInputType.emailAddress, 
        icon: Icons.email_outlined,
        
        );
        
  }
  Widget _buttonEnviar(BuildContext context) {
      return  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFF6969),
          padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
          ),
        
        onPressed: (){ 
           
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => VerificationPage()),
          );
        },
        child: Text(
      'Enviar',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
    
      );
      
  
     }
    
    
  }
  
  
    
  class _textFieldReset extends StatefulWidget {
  final String labelText;
   final String hintText;
   final IconData? icon;
 final Function onChanged;
 final TextInputType keyboardType;
 final bool obscureText;
 
 
  const _textFieldReset({
    required this.labelText, 
  required this.onChanged,
   required this.hintText,
     required this.keyboardType,
      required this.icon, 
       this.obscureText=false, 
      
     });

  @override
  State<_textFieldReset> createState() => _textFieldResetState();
  
  
}
class _textFieldResetState extends State<_textFieldReset> {
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

// ignore: camel_case_types





