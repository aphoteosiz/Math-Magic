

import 'package:flutter/material.dart';
import 'package:math_magic/src/pages/login_page.dart';



class NewPAsswordPage extends StatelessWidget {
  
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
              'Nueva contraseña',
                         style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    SizedBox(height: 35.0,), 
                _textFieldNewPassword(),
                
                SizedBox(height: 20.0,),
                _textFieldRepPassword(),
                SizedBox(height: 20.0,),
                _buttonEnviar(context),
              
            ],
        ),
      ),
        
          ),
        );
    
  }
  Widget _textFieldNewPassword() {
    return _textFieldReset(
      labelText: 'Nueva Contraseña',
       onChanged: (value)=>{},
       hintText: 'Ingrese su nueva contraseña',
        keyboardType: TextInputType.visiblePassword, 
        icon: Icons.lock_clock_outlined,
        
        );
        
  }
  Widget _textFieldRepPassword() {
    return _textFieldReset(
      labelText: 'Repita Contraseña',
       onChanged: (value)=>{},
       hintText: 'Repita su nueva contraseña',
        keyboardType: TextInputType.visiblePassword, 
        icon: Icons.lock_clock_outlined,
        
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
            MaterialPageRoute(builder: (context) => LoginPage()),
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





