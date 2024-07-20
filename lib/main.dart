import 'package:flutter/material.dart';
import 'package:myapp/my_router.dart';
import 'package:myapp/my_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.login.name,
      routes: routes,
      onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (context) => PageNotFound(name: settings.name),
        );
      },      
    );
  }
}


class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key, required this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('La ruta $name no existe'),
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
                  Navigator.pushReplacementNamed(context, MyRoutes.login.name);
                },
                child: const Text('Ir a la página principal'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}