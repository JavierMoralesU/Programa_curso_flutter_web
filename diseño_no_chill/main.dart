import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: Scaffold(
        body: Container(

          color: Color(0xfffcf0a4),
          child: Row(
            children: 
            [
              Container(
                color: Color.fromARGB(255, 213, 156, 115),
                child: Column(
                  //mainaxis alinea verticalmente
                  // mainAxisAlignment: MainAxisAlignment.center,
                  //crossaxis alinea horizontalmente
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    botton(Icons.book, 'Projectos', () {}),
                    botton(Icons.draw, 'Borradores', () {}),
                    botton(Icons.switch_access_shortcut_outlined, 'Compartidos',
                        () {}),
                    const Spacer(),
                    botton(Icons.settings, 'Opciones', () {}),
                    botton(Icons.people, 'Invitar miembros', () {}),
                    botton(Icons.add, 'Nuevo borrador', () {}),
                    botton(Icons.folder, 'Nuevo proyecto', () {}),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column
                (
                  children: 
                  [
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: 
                      [
                        Text(
                          'Side Hustle',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 35,
                        ),
                        SizedBox(width: 800),
                        Icon(Icons.link),
                        SizedBox(width: 20),
                        Text('Compartir'),
                        SizedBox(width: 20),
                        Icon(Icons.more_vert),
                        //
                      ],
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        nota(),
                        const SizedBox(width: 40),
                        nota(),
                        const SizedBox(width: 40),
                        nota(),
                        const SizedBox(width: 40),
                        nota(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  nota() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue[200],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 200,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              const Text('Targeta x'),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'Texto de relleno: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec purus nec nisl'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: 
            [
              SizedBox(
                width: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.green[300]),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  ),
                  child: const Icon(Icons.edit, color: Colors.black),
                ),
                ),
              const SizedBox(width: 20),
                SizedBox
                (
                width: 60,
                child: ElevatedButton
                (
                  onPressed: () {},
                  style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.red[300]),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  ),
                  child: 
                      const Icon(Icons.delete, color: Colors.black),
                      

                   
                ),
                ),

            ],
          ),
        ],
      ),
    );
  }

  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: 
          [
            Icon(icon),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
