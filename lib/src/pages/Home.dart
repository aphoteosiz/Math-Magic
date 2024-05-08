



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:math_magic/src/pages/primer_Grado.dart';
import 'package:math_magic/src/pages/segundo_Grado.dart';

class Home extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(206, 254, 207, 0),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
          title: Text('Selecciona tu grado escolar'),
          
          floating: false,
          pinned: false,
          flexibleSpace: FlexibleSpaceBar(background: Container(color: Colors.black26,
          
          ),
          ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Title(
                        color: Colors.black,
                      child: Text('Primer grado',
                       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
                       )),
                       Text('Numeros negativos, Sumas y restas',
                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                       ),
                       Text('Multiplicacion y division',
                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                       ),
                       Text('Fracciones y decimales',
                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                       ),
                       _buttonEntrar1(context),
                       

                    ],),
                ),
              ),
              ),
          ),
           SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Title(
                        color: Colors.black,
                      child: Text('Segundo grado',
                       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
                       )),
                       Text('Operaciones con decimales',
                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                       ),
                       Text('Resolucion de ecuaciones',
                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                       ),
                       Text('Ecuaciones lineales',
                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                       ),
                       _buttonEntrar2(context),

                    ],),
                ),
              ),
              ),
          ),
           SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Title(
                        color: Colors.black,
                      child: Text('tercer grado',
                       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),
                       )),
                       Text('Divisibilidad',
                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                       ),
                       Text('Funciones y ecuaciones',
                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                       ),
                       Text('Diferentes tipos de variacion',
                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                       ),
                       _buttonEntrar3(),
                       
                    ],),
                ),
              ),
              ),
          )
          
          
          ],
          
      ),
      
    );
    
  }
  Widget _buttonEntrar1(BuildContext context) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 105, 120, 255),
          padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
          ),
        
        onPressed: (){ 
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Primero()),
          );
        },
        child: Text(
      'Entrar',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
      );
     }
     Widget _buttonEntrar2(BuildContext context) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 105, 120, 255),
          padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
          ),
        
        onPressed: (){ 
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Segundo()),
          );
        },
        child: Text(
      'Entrar',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
      );
     }
 Widget _buttonEntrar3() {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 105, 120, 255),
          padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
          ),
        
        onPressed: (){ 
           
        },
        child: Text(
      'Entrar',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
      );
     }
}
  
  
  
  
  
