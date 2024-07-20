import 'package:flutter/material.dart';
import 'package:myapp/my_routes.dart';

class PantallaLogin extends StatefulWidget {
   const PantallaLogin({required key}) : super(key: key);

  @override
  PantallaLoginState createState() => PantallaLoginState();
}

class PantallaLoginState extends State<PantallaLogin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextField(
                controller: emailController,
                maxLength: 30,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  label: Text('Email'),
                  icon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: passwordController,
                maxLength: 30,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  label: const Text('Password'),
                  icon: const Icon(Icons.lock),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                ),
                obscureText: !isPasswordVisible,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  String email = emailController.text;
                  String password = passwordController.text;

                  if ((email == 'jreycruz1126@unah.hn' && password == '20182001662')) {
                    Navigator.pushReplacementNamed(context, MyRoutes.start.name);
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Error'),
                        content: const Text('Credenciales incorrectas'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: const Text('Iniciar sesión'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.register.name);
                },
                child: const Text('Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}