import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/widgets.dart';

class Segundo extends StatelessWidget {
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
          title: Text('SEGUNDO GRADO'),
          
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
                'operaciones con decimales',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación -2.5 + 1.8?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: -0.7\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: -4.3\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: 4.3',
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
                    text: ' Problema: ¿Cuál es el resultado de la operación -3.6 × 2.4?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: -8.64\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 8.64\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: 0.4',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación 9.75 ÷ 0.5?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: 19.5\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 0.195\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: 0.975',
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
                'resolucion de ecuaciones',
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
                    text: '¿Cual es el valor de x en la ecuacion 2x+5=15?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: x=5\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: X=10\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: X=-5',
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
                    text: 'Problema: ¿Cuál es el valor de y en la ecuación 3y−7=20?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: Y= 9\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: Y= 9.666\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: Y= 9.5',
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
                    text: 'Problema: ¿Cuál es el valor de  z en la ecuación 4z+8=−12?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: Z=-5\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: Z=5.5\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: X=-5.25',
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
                 'Geometria',
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
                     text: 'Problema: Calcula el área de un triángulo con base de 6 cm y altura de 8 cm.\n',
                     style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                   ),

                   TextSpan(
                     text: 'Respuesta A: 0.24\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta B: 30\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta C: 48',
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
                     text: 'Problema 2: Determina el perímetro de un cuadrado con un lado de longitud 10 cm.\n',
                     style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                   ),

                   TextSpan(
                     text: 'Respuesta A: 30\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta B: 40\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta C: 50',
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
                     text: 'Problema 3: Calcula el volumen de un cilindro con radio de la base igual a 4 cm y altura de 10 cm.\n',
                     style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                   ),

                   TextSpan(
                     text: 'Respuesta A: V=160πcm3\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta B: V=80πcm3\n',
                     style: TextStyle(fontSize: 24, color: Colors.black),
                   ),

                   TextSpan(
                     text: 'Respuesta C: V=320πcm3',
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
            
//  
// SEGUNDO GRADO
// operaciones con decimales

// Problema: ¿Cuál es el resultado de la operación -2.5 + 1.8?
// Respuesta A: -0.7
// Respuesta B: -4.3
// Respuesta C: 4.3
// Respuesta Correcta: B
// Problema: ¿Cuál es el resultado de la operación -3.6 × 2.4?
// Respuesta A: -8.64
// Respuesta B: 8.64
// Respuesta C: -0.4
// Respuesta Correcta: A
// Problema: ¿Cuál es el resultado de la operación 9.75 ÷ 0.5?
// Respuesta A: 19.5
// Respuesta B: 0.195
// Respuesta C: 0.975
// Respuesta Correcta: A

// resolucion de ecuaciones
//¿Cual es el valor de x en la ecuacion 2x+5=15?
// Respuesta A: 
// x=5
// Respuesta B: 
// x=10
// Respuesta C: 
// x=−5
// Respuesta Correcta: B
// Problema: ¿Cuál es el valor de y en la ecuación 3y−7=20?
// Respuesta A: 
// y=9
// Respuesta B: 
// y=9.666
// Respuesta C: 
// y=9.5
// Respuesta Correcta: C


// Problema: ¿Cuál es el valor de x en la ecuación 2x+5=15?
// 
// Respuesta A: 
// x=5
// Respuesta B: 
// x=10
// Respuesta C: 
// x=−5
// Respuesta Correcta: B

// Problema: ¿Cuál es el valor de y en la ecuación 3y−7=20?
// Respuesta A: 
// y=9
// Respuesta B: 
// y=9.666
// Respuesta C: 
// y=9.5
// Respuesta Correcta: C
// Problema: ¿Cuál es el valor de  z en la ecuación 4z+8=−12?

// Respuesta A: 
// z=−5
// Respuesta B: 
// z=−5.5
// Respuesta C: 
// z=−5.25

// //geometria 
// Problema 1:
// Calcula el área de un triángulo con base de 6 cm y altura de 8 cm.

// Respuesta A: A=24cm2
 
// Respuesta B: A=30cm2 

// Respuesta C: A=48cm2
 
// Respuesta Correcta: A

// Problema 2: Determina el perímetro de un cuadrado con un lado de longitud 10 cm.

// Respuesta A: P=30cm

// Respuesta B: P=40cm

// Respuesta C: P=50cm

// Respuesta Correcta: B

// Problema 3: Calcula el volumen de un cilindro con radio de la base igual a 4 cm y altura de 10 cm.

// Respuesta A: V=160πcm3

// Respuesta B: V=80πcm3
 
// Respuesta C: V=320πcm3

// Respuesta Correcta: B

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
