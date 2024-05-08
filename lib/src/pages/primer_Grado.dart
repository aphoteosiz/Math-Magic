import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/widgets.dart';

class Primero extends StatelessWidget {
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
          title: Text('PRIMER GRADO'),
          
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
                'numeros negativos sumas y restas',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación (-5) + 3?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: -2\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 8\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: -8',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación (-10) - (-3)?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: -13\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 7\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: -7',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación 6 - (-2)?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: 8\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: -4\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: 4',
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
                'Multiplicacion y division',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación (-4) × 2?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: -8\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 8\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: -2',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación (-12) ÷ 3?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: -4\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 4\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: -1',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación 15 ÷ (-5)?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: -3\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 3\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: -15',
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
                'Fracciones y decimales',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación -1/2 + 3/4?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: 0.25\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: -0.25\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: 1.25',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación -3/4 × 2/5?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: -3/10\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 3/10\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: 6/20',
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
                    text: 'Problema: ¿Cuál es el resultado de la operación 15 ÷ (-5)?\n',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),

                  TextSpan(
                    text: 'Respuesta A: -3\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta B: 3\n',
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  TextSpan(
                    text: 'Respuesta C: -15',
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
            
//   //PRIMER GRADO

// numeros negativos sumas y restas
// Problema: ¿Cuál es el resultado de la operación (-5) + 3?
// Respuesta A: -2
// Respuesta B: 8
// Respuesta C: -8
// Respuesta Correcta: A
// Problema: ¿Cuál es el resultado de la operación (-10) - (-3)?
// Respuesta A: -13
// Respuesta B: 7
// Respuesta C: -7
// Respuesta Correcta: C
// Problema: ¿Cuál es el resultado de la operación 6 - (-2)?
// Respuesta A: 8
// Respuesta B: -4
// Respuesta C: 4
// Respuesta Correcta: A

// division y multiplicacion

// Problema: ¿Cuál es el resultado de la operación (-4) × 2?
// Respuesta A: -8
// Respuesta B: 8
// Respuesta C: -2
// Respuesta Correcta: A
// Problema: ¿Cuál es el resultado de la operación (-12) ÷ 3?
// Respuesta A: -4
// Respuesta B: 4
// Respuesta C: -1
// Respuesta Correcta: A
// Problema: ¿Cuál es el resultado de la operación 15 ÷ (-5)?
// Respuesta A: -3
// Respuesta B: 3
// Respuesta C: -15
// Respuesta Correcta: A

// Fracciones y decimales

// Problema: ¿Cuál es el resultado de la operación -1/2 + 3/4?
// Respuesta A: 5/4
// Respuesta B: 1/4
// Respuesta C: -1/4
// Respuesta Correcta: A
// Problema: ¿Cuál es el resultado de la operación -0.5 + 0.75?
// Respuesta A: 0.25
// Respuesta B: -0.25
// Respuesta C: 1.25
// Respuesta Correcta: C
// Problema: ¿Cuál es el resultado de la operación -3/4 × 2/5?
// Respuesta A: -3/10
// Respuesta B: 3/10
// Respuesta C: -6/20
// Respuesta Correcta: A

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
