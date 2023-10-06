import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5DEB3)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Men Original', style: TextStyle(fontSize: 12)),
              Text('Smith Shoes', style: TextStyle(fontSize: 18)),
            ],
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
              },
            ),
          ],
        ),  
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.20,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.network('https://cdn.thewirecutter.com/wp-content/media/2021/10/running-shoes-2048px-3128-2x1-1.jpg?auto=webp&quality=75&crop=2:1&width=980&dpr=2'),
                        ),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 8, bottom: 8),
                            child: Icon(Icons.favorite),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Segunda columna: descripción (25% de la pantalla)
                  Container(
                    height: constraints.maxHeight * 0.20,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '¡Prepárate para volar hacia el futuro con los Nike "JetSneaks"! Estos zapatos futuristas son como dos pequeños cohetes para tus pies, los JetSneaks te llevarán a la velocidad de la luz mientras caminas por la Tierra. ¡No te sorprendas si la NASA te llama para una carrera espacial! ¡Conviértete en el astronauta de la moda y despega con los Nike JetSneaks hoy mismo!',
                            textAlign: TextAlign.center, textScaleFactor: 1.05
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.11,
                    child: const Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Color: ', style: TextStyle(fontWeight: FontWeight.bold), textScaleFactor: 2),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.circle, color: Colors.lightBlue),
                                  Icon(Icons.circle, color: Colors.green),
                                  Icon(Icons.circle, color: Colors.yellow),
                                  Icon(Icons.circle, color: Colors.red),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Size: ', style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 2),
                              Text('9,34' , textScaleFactor: 2.5),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.10,
                    child: Row(
                      children: [
                        // Primera columna: botón "Add to bag" (50% del ancho)
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Acción para el botón "Add to bag"
                                },
                                child: const Text('Add to bag', style: TextStyle(fontWeight: FontWeight.bold), textScaleFactor: 2,),
                              ),
                            ],
                          ),
                        ),
                        // Segunda columna: precio del zapato "95$" (50% del ancho)
                        const Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('95\$',style: TextStyle(fontWeight: FontWeight.bold), textScaleFactor: 3,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.30,
                    child: const CustomCard(),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(

      color: Colors.purple,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.purple],
          ),
        ),
        width: 300,
        height: 200,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: ClipRect(
                child: Transform.translate(
                  offset: Offset(150, 0),
                  child: Container(
                    width: 500,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.2),
                    ),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.star, size: 30, color: Colors.white),
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(Icons.image, size: 50, color: Colors.white),
              ),
            ),
            const Align(
              alignment: Alignment(0, -0.2),
              child: Text(
                'Título',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFF4F4F4)),
              ),
            ),
            const Align(
              alignment: Alignment(0, 0.2),
              child: Text(
                'Descripción básica del producto',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Color(0xFFF4F4F4)),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Fecha:', style: TextStyle(color: Color(0xFFF4F4F4))),
              ),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('06/10/2023', style: TextStyle(color: Color(0xFFF4F4F4))),
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
