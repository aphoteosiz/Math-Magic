import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Segundo extends StatefulWidget {
  @override
  _SegundoState createState() => _SegundoState();
}
class _SegundoState extends State<Segundo> {
  final List<String> correctAnswers=[
    'B', 'A', 'A',
    'B', 'C', 'B',
    'C', 'A', 'A',
     
    
  ];

  // Controladores de texto para cada pregunta
  final List<TextEditingController> controllers = List.generate(
    9,
    (index) => TextEditingController(),
  );
   @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _verifyAnswers() {
    int correctCount = 0;
    for (int i = 0; i < correctAnswers.length; i++) {
      if (i< controllers.length&& controllers[i].text.trim() == correctAnswers[i]) {
        correctCount++;
      }
    }
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Resultados'),
          content: Text('Respuestas correctas: $correctCount/${correctAnswers.length}'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(206, 254, 207, 0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  title: Text('SEGUNDO GRADO'),
                  floating: false,
                  pinned: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      color: Colors.black26,
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
                _buildQuestionCard(
                  context,
                  'Problema: ¿Cuál es el resultado de la operación -2.5 + 1.8?',
                  ['-0.7', '-4.3', '4.3'],
                  0,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: ¿Cuál es el resultado de la operación -3.6 × 2.4?',
                  ['-8.64', '8.64', '-0.4'],
                  1,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: ¿Cuál es el resultado de la operación 9.75 ÷ 0.5?',
                  ['19.5', '0.195', '0.975'],
                  2,
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
                _buildQuestionCard(
                  context,
                  '¿Cual es el valor de x en la ecuacion 2x+5=15?',
                  ['5', '10', '-5'],
                  3,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: ¿Cuál es el valor de y en la ecuación 3y−7=20?',
                  ['9', '9.666', '9.5'],
                  4,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: ¿Cuál es el valor de z en la ecuación 4z+8=−12?',
                  ['-5', '-5.5', '-5.25'],
                  5,
                ),
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
                _buildQuestionCard(
                  context,
                  'Problema: Calcula el área de un triángulo con base de 6 cm y altura de 8 cm.',
                  ['24', '30', '48'],
                  6,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: Determina el perímetro de un cuadrado con un lado de longitud 10 cm.',
                  ['30', '40', '50'],
                  7,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: Calcula el volumen de un cilindro con radio de la base igual a 4 cm y altura de 10 cm.',
                  ['160π', '80π', '320π'],
                  8,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: _buttonVerificar(),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionCard(BuildContext context, String question, List<String> options, int index) {
    return SliverToBoxAdapter(
      child: Padding(
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
                        text: '$question\n',
                        style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      for (int i = 0; i < options.length; i++)
                        TextSpan(
                          text: 'Respuesta ${String.fromCharCode(65 + i)}: ${options[i]}\n',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: controllers[index],
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[A-C]')),// solo letras en mayuscula de la A a la C. A, B, C
                    LengthLimitingTextInputFormatter(1), // solo permite un caracter
                  ],
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                    hintText: 'escribe la respuesta correcta',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonVerificar() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 105, 120, 255),
        padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 20.0),
      ),
      onPressed: () {
        _verifyAnswers();
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
