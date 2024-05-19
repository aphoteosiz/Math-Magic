import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tercero extends StatefulWidget {
  @override
  _TerceroState createState() => _TerceroState();
}

class _TerceroState extends State<Tercero> {
  final List<String> correctAnswers = [
    'A', 'A', 'A',
    'B', 'A', 'B',
    'A', 'A', 'B',
  ];

  final List<TextEditingController> controllers = List.generate(
    9,
    (index) => TextEditingController(),
  );

  final List<bool> validationResults = List.generate(9, (index) => true);

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _verifyAnswers() {
    setState(() {
      for (int i = 0; i < correctAnswers.length; i++) {
        if (i < controllers.length && controllers[i].text.trim().toUpperCase() == correctAnswers[i]) {
          validationResults[i] = true;
        } else {
          validationResults[i] = false;
        }
      }
    });

    int correctCount = validationResults.where((result) => result).length;

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
                  title: Text('TERCER GRADO'),
                  floating: false,
                  pinned: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(color: Colors.black26),
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
                _buildQuestionCard(
                  context,
                  'Problema: ¿Es 48 divisible por 4?',
                  ['Sí', 'No', 'A veces'],
                  0,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: ¿Es 75 divisible por 5?',
                  ['Sí', 'No', 'A veces'],
                  1,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: ¿Es 132 divisible por 3?',
                  ['Sí', 'No', 'A veces'],
                  2,
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
                _buildQuestionCard(
                  context,
                  'Problema: Dada la función f(x)=2x+3, ¿cuál es el valor de f(5)?',
                  ['10', '13', '15'],
                  3,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: Si la ecuación 3x−5=7 es verdadera, ¿cuál es el valor de x?',
                  ['4', '12', '-4'],
                  4,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: Si g(x)=x²+4x−3, ¿cuál es el valor de g(2)?',
                  ['9', '7', '3'],
                  5,
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Diferentes tipos de variación',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                _buildQuestionCard(
                  context,
                  'Problema: Si el precio de una mercancía aumenta en un 20% y luego disminuye en un 10%, ¿cuál es el cambio neto en el precio?',
                  ['Aumento del 8%', 'Aumento del 10%', 'Reducción del 2%'],
                  6,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: Si una inversión crece a una tasa del 5% anualmente, ¿cuál es el factor de crecimiento después de 3 años?',
                  ['1.157', '1.15', '0.157'],
                  7,
                ),
                _buildQuestionCard(
                  context,
                  'Problema: Si la velocidad de un automóvil es de 60 km/h y se duplica a 120 km/h, ¿cuál es el cambio porcentual en la velocidad?',
                  ['50%', '100%', '200%'],
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
                    FilteringTextInputFormatter.allow(RegExp('[A-C]')),
                    LengthLimitingTextInputFormatter(1),
                  ],
                  textCapitalization: TextCapitalization.characters,
                  decoration: InputDecoration(
                    hintText: 'escribe la respuesta correcta',
                    border: OutlineInputBorder(),
                    errorText: validationResults[index] ? null : 'Respuesta incorrecta',
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

void main() {
  runApp(MaterialApp(
    home: Tercero(),
  ));
}
