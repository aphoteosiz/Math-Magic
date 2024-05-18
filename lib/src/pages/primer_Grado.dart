import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Primero extends StatefulWidget {
  @override
  _PrimeroState createState() => _PrimeroState();
}

class _PrimeroState extends State<Primero> {
  // Lista de respuestas correctas
  final List<String> correctAnswers = [
    'A', 'C', 'A', // Sumas y restas
    'A', 'A', 'A', // Multiplicacion y division
    'A', 'C', 'A', // Fracciones y decimales
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

  // Método para verificar las respuestas
  void verifyAnswers() {
    int score = 0;
    for (int i = 0; i < correctAnswers.length; i++) {
      if (controllers[i].text.trim().toUpperCase() == correctAnswers[i]) {
        score++;
      }
    }
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Resultados'),
          content: Text('Respuestas correctas: $score/${correctAnswers.length}'),
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
                  title: Text('PRIMER GRADO'),
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
                      'Números Negativos: Sumas y Restas',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ..._buildProblemCards1(),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Multiplicación y División',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ..._buildProblemCards2(),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Fracciones y Decimales',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ..._buildProblemCards3(),
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

  List<Widget> _buildProblemCards1() {
    List<Widget> cards = [];
    List<String> problems = [
      'Problema: ¿Cuál es el resultado de la operación (-5) + 3?\nRespuesta A: -2\nRespuesta B: 8\nRespuesta C: -8',
      'Problema: ¿Cuál es el resultado de la operación (-10) - (-3)?\nRespuesta A: -13\nRespuesta B: 7\nRespuesta C: -7',
      'Problema: ¿Cuál es el resultado de la operación 6 - (-2)?\nRespuesta A: 8\nRespuesta B: -4\nRespuesta C: 4',
    ];

    for (int i = 0; i < problems.length; i++) {
      cards.add(_buildQuestionCard(context, problems[i], i));
    }
    return cards;
  }

  List<Widget> _buildProblemCards2() {
    List<Widget> cards = [];
    List<String> problems = [
      'Problema: ¿Cuál es el resultado de la operación (-4) × 2?\nRespuesta A: -8\nRespuesta B: 8\nRespuesta C: -2',
      'Problema: ¿Cuál es el resultado de la operación (-12) ÷ 3?\nRespuesta A: -4\nRespuesta B: 4\nRespuesta C: -1',
      'Problema: ¿Cuál es el resultado de la operación 15 ÷ (-5)?\nRespuesta A: -3\nRespuesta B: 3\nRespuesta C: -15',
    ];

    for (int i = 0; i < problems.length; i++) {
      cards.add(_buildQuestionCard(context, problems[i], i + 3));
    }
    return cards;
  }

  List<Widget> _buildProblemCards3() {
    List<Widget> cards = [];
    List<String> problems = [
      'Problema: ¿Cuál es el resultado de la operación -1/2 + 3/4?\nRespuesta A: 0.25\nRespuesta B: -0.25\nRespuesta C: 1.25',
      'Problema: ¿Cuál es el resultado de la operación -0.5 + 0.75?\nRespuesta A: 0.25\nRespuesta B: -0.25\nRespuesta C: 1.25',
      'Problema: ¿Cuál es el resultado de la operación -3/4 × 2/5?\nRespuesta A: -3/10\nRespuesta B: 3/10\nRespuesta C: -6/20',
    ];

    for (int i = 0; i < problems.length; i++) {
      cards.add(_buildQuestionCard(context, problems[i], i + 6));
    }
    return cards;
  }

  Widget _buildQuestionCard(BuildContext context, String problem, int index) {
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
                    text: problem,
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: controllers[index],
                  decoration: InputDecoration(
                    hintText: 'Escribe la respuesta correcta',
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
      onPressed: verifyAnswers,
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
