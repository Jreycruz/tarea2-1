import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {

  const PantallaInicio({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bandeja de entrada'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {

          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20), 
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
            },
            child: const ListTile(
              leading:  Icon(Icons.email),
              title:  Text(
                'Jorge Reyes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle:  Text(
                'Asunto: Correo de Prueba',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
            },
            child: const ListTile(
              leading:  Icon(Icons.email),
              title:  Text(
                'Luis Cruz',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle:  Text(
                'Asunto: Correo de Prueba',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
            },
            child: const  ListTile(
              leading:  Icon(Icons.email),
              title:  Text(
                'Andrea Ferrera',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle:  Text(
                'Asunto: Correo de Prueba',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
            },
            child: const  ListTile(
              leading:  Icon(Icons.email),
              title:  Text(
                'Angela Cruz',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle:  Text(
                'Asunto: Correo de Prueba',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {
          // Action when button is pressed
        },
        child: const Icon(
          Icons.edit,
          color: Colors.black,
        ),
      ),
    );
  }
}