import 'package:flutter/material.dart';
import 'package:xd/main.dart';
import 'inicio.dart'; // Importa la siguiente plantilla

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Diabetes",
      home: LoginInicio(),
    );
  }
}

class LoginInicio extends StatefulWidget {
  const LoginInicio({Key? key}) : super(key: key);

  @override
  State<LoginInicio> createState() => _LoginInicioState();
}

class _LoginInicioState extends State<LoginInicio> {
  TextEditingController usuarioController = TextEditingController();
  TextEditingController contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(),
    );
  }

  Widget cuerpo() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://st2.depositphotos.com/36924814/46071/i/450/depositphotos_460713580-stock-photo-medical-health-blue-cross-neon.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            nombre(),
            campoUsuario(),
            contrasena(),
            iniciarSession(),
          ],
        ),
      ),
    );
  }

  Widget nombre() {
    return Text(
      "Iniciar Sesión",
      style: TextStyle(
        color: Colors.white,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget campoUsuario() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        controller: usuarioController,
        decoration: InputDecoration(
          hintText: "Ingresar Usuario",
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  Widget contrasena() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextField(
        controller: contrasenaController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Contraseña",
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }

  Widget iniciarSession() {
    return ElevatedButton(
      onPressed: () {
        if (usuarioController.text == 'Mario' &&
            contrasenaController.text == '123Mario') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => pagInicio()),
          );
        } else {
          // Aquí puedes mostrar un mensaje de error o realizar alguna otra acción
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Error'),
                content: Text('Credenciales incorrectas'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cerrar'),
                  ),
                ],
              );
            },
          );
        }
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.access_time),
          ),
          Text('Iniciar'),
        ],
      ),
    );
  }
}