import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/widgets.dart';

class Tercero extends StatelessWidget {
   // Lista de respuestas correctas
 

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(206, 254, 207, 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: CustomScrollView(
            slivers: [
          SliverAppBar(
          title: Text('TERCER GRADO'),
          
          floating: false,
          pinned: false,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(color: Colors.black26,
          
          ),
          ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Divisibilidad',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          
                 
          SliverToBoxAdapter(
            child: Padding (
              padding: EdgeInsets.all(10),

              
          child: Card(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                RichText(
                text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Problema: ¿Es 48 divisible por 4?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: Si\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: No\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: A veces',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
                  ),
                  ),
              
        
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(hintText: 'escribe la respuesta correcta',
                border: OutlineInputBorder()),
              )
              ],
                
              ),
            ),
          ),
          ),
              
                        
                
          ),
          SliverToBoxAdapter(
            child: Padding (
              padding: EdgeInsets.all(10),

              
          child: Card(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                RichText(
                text: TextSpan(
                children: [
                  TextSpan(
                    text: ' Problema: ¿Es 75 divisible por 5?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: Si\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: No\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: A veces',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
                  ),
                  ),
              
        
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(hintText: 'escribe la respuesta correcta',
                border: OutlineInputBorder()),
              )
              ],
                
              ),
            ),
          ),
          ),
              
                        
                
          ),
          SliverToBoxAdapter(
            child: Padding (
              padding: EdgeInsets.all(10),

              
          child: Card(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                RichText(
                text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Problema: ¿Es 132 divisible por 3?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: Si\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: No\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: A veces',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
                  ),
                  ),
              
        
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(hintText: 'escribe la respuesta correcta',
                border: OutlineInputBorder()),
              )
              ],
                
              ),
            ),
          ),
          ),
              
                        
                
          ),
           SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Funciones y ecuaciones',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding (
              padding: EdgeInsets.all(10),

              
          child: Card(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                RichText(
                text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Problema: Dada la función f(x)=2x+3, ¿cuál es el valor de f(5)?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: 10\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 13\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: 15',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
                  ),
                  ),
              
        
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(hintText: 'escribe la respuesta correcta',
                border: OutlineInputBorder()),
              )
              ],
                
              ),
            ),
          ),
          ),
              
                        
                
          ),
          SliverToBoxAdapter(
            child: Padding (
              padding: EdgeInsets.all(10),

              
          child: Card(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                RichText(
                text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Problema: Si la ecuación 3x−5=7 es verdadera, ¿cuál es el valor de x?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: 4\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 12\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: -4',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
                  ),
                  ),
              
        
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(hintText: 'escribe la respuesta correcta',
                border: OutlineInputBorder()),
              )
              ],
                
              ),
            ),
          ),
          ),
              
                        
                
          ),
          SliverToBoxAdapter(
            child: Padding (
              padding: EdgeInsets.all(10),

              
          child: Card(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                RichText(
                text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Problema: Si g(x)=x2 +4x−3, ¿cuál es el valor de g(2)?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: 9\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 7\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: 3',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ],
                  ),
                  ),
              
        
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(hintText: 'escribe la respuesta correcta',
                border: OutlineInputBorder()),
              )
              ],
                
              ),
            ),
          ),
          ),
         
              
                        
                
          ),
             //faltan las ecuaciones lineales
             SliverToBoxAdapter(
             child: Padding(
               padding: EdgeInsets.all(20),
               child: Text(
                 'Diferentes tipos de variacion',
                 style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
           ),
           SliverToBoxAdapter(
             child: Padding (
               padding: EdgeInsets.all(10),

              
           child: Card(
            
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0),
             ),
             elevation: 5,
             margin: EdgeInsets.all(10),
             child: Padding(
               padding: EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 RichText(
                 text: TextSpan(
                 children: [
                   TextSpan(
                     text: 'Problema: Si el precio de una mercancía aumenta en un 20% y luego disminuye en un 10%, ¿cuál es el cambio neto en el precio?\n',
                     style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                   ),

                   TextSpan(
                     text: 'Respuesta A: 8%\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta B: 10%\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta C: 2%',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),
                 ],
                   ),
                   ),
              
        
               SizedBox(height: 10),
               TextField(
                 decoration: InputDecoration(hintText: 'escribe la respuesta correcta',
                 border: OutlineInputBorder()),
               )
               ],
                
               ),
             ),
           ),
           ),
              
                        
                
           ),
           SliverToBoxAdapter(
             child: Padding (
               padding: EdgeInsets.all(10),

              
           child: Card(
            
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0),
             ),
             elevation: 5,
             margin: EdgeInsets.all(10),
             child: Padding(
               padding: EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 RichText(
                 text: TextSpan(
                 children: [
                   TextSpan(
                     text: 'Problema: Si una inversión crece a una tasa del 5% anualmente, ¿cuál es el factor de crecimiento después de 3 años?\n',
                     style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                   ),

                   TextSpan(
                     text: 'Respuesta A: 1.157\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta B: 1.15\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta C: 0.157',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),
                 ],
                   ),
                   ),
              
        
               SizedBox(height: 10),
               TextField(
                 decoration: InputDecoration(hintText: 'escribe la respuesta correcta',
                 border: OutlineInputBorder()),
               )
               ],
                
               ),
             ),
           ),
           ),
              
                        
                
           ),
           SliverToBoxAdapter(
             child: Padding (
               padding: EdgeInsets.all(10),

              
           child: Card(
            
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0),
             ),
             elevation: 5,
             margin: EdgeInsets.all(10),
             child: Padding(
               padding: EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 RichText(
                 text: TextSpan(
                 children: [
                   TextSpan(
                     text: 'Problema: Si la velocidad de un automóvil es de 60 km/h y se duplica a 120 km/h, ¿cuál es el cambio porcentual en la velocidad?\n',
                     style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                   ),

                   TextSpan(
                     text: 'Respuesta A: 50%\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta B: 100%\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta C: 200%',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),
                 ],
                   ),
                   ),
              
        
               SizedBox(height: 10),
               TextField(
                 decoration: InputDecoration(hintText: 'escribe la respuesta correcta',
                 border: OutlineInputBorder()),
               )
               ],
               ),
              
             ),
            
           ),
          
           ),
          
              
                
           ),  
                 
        
        ], 
       ),
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
             child: _buttonVerificar(),
        ),
        ]
      ),
          );
        

        
      
          
            
          
  }
  Widget _buttonVerificar() {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 105, 120, 255),
          padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
          ),
        
        onPressed: (){ 
          
          
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

//TERCER GRADO
  
//   Divisibilidad
// Problema: ¿Es 48 divisible por 4?
// Respuesta A: Sí
// Respuesta B: No
// Respuesta C: A veces
// Respuesta Correcta: A
// Problema: ¿Es 75 divisible por 5?
// Respuesta A: Sí
// Respuesta B: No
// Respuesta C: A veces
// Respuesta Correcta: A
// Problema: ¿Es 132 divisible por 3?
// Respuesta A: Sí
// Respuesta B: No
// Respuesta C: A veces
// Respuesta Correcta: A

//Funciones y ecuaciones
// Problema: Dada la función f(x)=2x+3, ¿cuál es el valor de f(5)?
// Respuesta A: 10
// Respuesta B: 13
// Respuesta C: 15
// Respuesta Correcta: B
// Problema: Si la ecuación 3x−5=7 es verdadera, ¿cuál es el valor de x? 
// Respuesta A: 4
// Respuesta B: 12
// Respuesta C: -4
// Respuesta Correcta: A
// Problema: Si g(x)=x2 +4x−3, ¿cuál es el valor de g(2)?
// Respuesta A: 9
// Respuesta B: 7
// Respuesta C: 3
// Respuesta Correcta: B

//Diferentes tipos de variacion
// Problema: Si el precio de una mercancía aumenta en un 20% y luego disminuye en un 10%, 
// ¿cuál es el cambio neto en el precio?
// Respuesta A: Aumento del 8%
// Respuesta B: Aumento del 10%
// Respuesta C: Reducción del 2%
// Respuesta Correcta: A
// Problema: Si una inversión crece a una tasa del 5% anualmente, 
// ¿cuál es el factor de crecimiento después de 3 años?
// Respuesta A: 1.157
// Respuesta B: 1.15
// Respuesta C: 0.157
// Respuesta Correcta: A
// Problema: Si la velocidad de un automóvil es de 60 km/h y se duplica a 120 km/h, 
// ¿cuál es el cambio porcentual en la velocidad?
// Respuesta A: Aumento del 50%
// Respuesta B: Aumento del 100%
// Respuesta C: Aumento del 200%
// Respuesta Correcta: B
