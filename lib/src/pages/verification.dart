

import 'package:flutter/material.dart';
import 'package:math_magic/src/pages/NewPassword.dart';


class VerificationPage extends StatelessWidget {
  
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
              'verificacion',
                         style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    SizedBox(height: 35.0,), 
                _textFieldCodigo(),
                SizedBox(height: 20.0,),
                _buttonVerificar(context),
              
            ],
        ),
      ),
        
          ),
        );
    
  }
  Widget _textFieldCodigo() {
    return _textFieldVerification(
      labelText: 'Ingrese su codigo de verificacion',
       onChanged: (value)=>{},
       hintText: 'Codigo de verificacion',
        keyboardType: TextInputType.number, 
        icon: Icons.accessibility_new_outlined,
        
        );
        
  }
  Widget _buttonVerificar(BuildContext context) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFF6969),
          padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
          ),
        
        onPressed: (){ 
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewPAsswordPage()),
          );
        },
        
        
        child: Text(
      'Verificar',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
      );
     }
    
  }
  
  
    
  class _textFieldVerification extends StatefulWidget {
   final String labelText;
    final String hintText;
    final IconData? icon;
  final Function onChanged;
  final TextInputType keyboardType;
 
 
 
  const _textFieldVerification({
    required this.labelText, 
  required this.onChanged,
   required this.hintText,
     required this.keyboardType,
      required this.icon, 
      
      
     });

  @override
  State<_textFieldVerification> createState() => _textFieldVerificationState();
  
  
}
class _textFieldVerificationState extends State<_textFieldVerification> {
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





