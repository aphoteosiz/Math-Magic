import 'package:math_magic/src/pages/BD_usuario.dart';

class AuthService {
  final BD_usuario _bdUsuario = BD_usuario();
  

  Future<bool> registerUser(String username, String email, String password) async {
    // Verificar si el usuario ya existe
    var user = await _bdUsuario.getUserByEmail(email);
    if (user != null) {
      return false; // Usuario ya existe
    }

    // Insertar nuevo usuario
    await _bdUsuario.insertUser({'username': username, 'email': email, 'password': password});
    return true;
  }

    
  Future<bool> loginUser(String email, String password) async {
    var user = await _bdUsuario.getUser(email, password);
    return user != null;
  }
}
