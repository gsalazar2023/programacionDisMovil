import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class Sensores extends StatelessWidget {
  const Sensores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensores'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 300,
          ),
          const Text("Hola"),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Volver")),
        ],
      )),
    );
  }
}

class Gestos extends StatelessWidget {
  const Gestos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestos'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 300,
          ),
          const Text("Hola"),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Volver")),
        ],
      )),
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          const SizedBox(
            height: 300,
          ),
          const Text("Hola"),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Volver")),
        ],
      )),
    );
  }
}

class ListDetail extends StatelessWidget {
  const ListDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: Center(
        //Lista
        child: ListView(
          children: <Widget>[
            //Elementos de lista se usan con container
            Container(
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text("Item 1"),
                )),
            Container(
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text("Item 2"),
                )),
            Container(
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text("Item 3"),
                )),
          ],
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context); //regresar
            },
            child: const Text("Volver"))
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        fontFamily: 'Anton',
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 0, 204)),
        useMaterial3: true,
      ),

      //Display de titulo
      home: const MyHomePage(title: 'App Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() {
    // ignore: avoid_print
    print('MyHomePage: State created');
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String mensaje = "";
  String iconoW = 'assets/icons/fireinthehole.svg';
  _MyHomePageState() {
    // ignore: avoid_print
    print('_MyHomePageState: constructor called');
  }

  @override
  //inicializa variables y config iniciales
  void initState() {
    super.initState();
    print('initState: called');
    print('initState: mounted = $mounted');
  }

  @override
  //cuando se cambian las dependencias de un widget
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies: called');
  }

  @override
  //se reconstruye widget con nuevas propiedades
  void didUpdateWidget(MyHomePage old) {
    super.didUpdateWidget(old);
    print('didUpdateWidget: called');
  }

  @override
  //cuando se remueve widget de arbol de widget. tambien se puede hacer limpieza de recursos
  void deactivate() {
    print('deactivate: called');
    super.deactivate();
  }

  @override
  //para eliminar permanentemente el widget de la lista
  void dispose() {
    print('dispose: called');
    super.dispose();
    print('dispose: mounted = $mounted');
  }

  @override
  void reassemble() {
    //para cuando la app se vuelve a armar durante un hot reload
    super.reassemble();
    print('reassemble: called');
    print('reassemble: mounted = $mounted');
  }

  void _incrementCounter() {
    setState(() {
      print("setState counter++");
      _counter++;
      if (_counter >= 15) {
        mensaje = "Victoria";
        iconoW = 'assets/icons/fireinthehole.svg';
      } else if (_counter == 10) {
        mensaje = "Derrota";
        iconoW = 'assets/icons/fire.svg';
      } else {
        mensaje = "Hola";
      }
    });
  }

  //al presionar el boton, el contador decrece
  void _decrementCounter() {
    setState(() {
      print("set state: counter--");
      _counter--;
      if (_counter < 0) {
        _counter = 0;
      }

      if (_counter >= 15) {
        mensaje = "Victoria";
        iconoW = 'assets/icons/fireinthehole.svg';
      } else if (_counter == 10) {
        mensaje = "Derrota";
        iconoW = 'assets/icons/fire.svg';
      } else {
        mensaje = "Hola";
      }
    });
  }

  // se resetea contador al presionar el boton
  void _resetCounter() {
    setState(() {
      print("set state: reset counter");
      _counter = 0;
      if (_counter == 0) {
        mensaje = "Hola de nuevo";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build: called');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.cyan),
              child: Text("Drawer Menu"),
            ),
            ListTile(
              title: const Text('Ejemplo Card'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Detalles'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Detail()),
                );
              },
            ),
            ListTile(
              title: const Text('Lista'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListDetail()),
                );
              },
            ),
            ListTile(
              title: const Text('Sensores'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sensores()),
                );
              },
            ),
            ListTile(
              title: const Text('Gestos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Gestos()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Card(
          elevation: 20,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(30.0),

            //Columna
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  iconoW,
                  height: 100,
                  width: 100,
                ),
                Text(
                  mensaje,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                Text(
                  '$_counter ',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),

                //Fila de botones
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.arrow_upward),
                  ),
                  ElevatedButton(
                      onPressed: _resetCounter,
                      child: const Icon(
                        Icons.restart_alt,
                      )),
                  ElevatedButton(
                      onPressed: _decrementCounter,
                      child: const Icon(Icons.arrow_downward)),
                ])
              ],
            ),
          ),
        ),
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: <Widget>[
        //USAR UNICO FLOATING BUTTON
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Detail())); //ir a Detail
            },
            child: const Text("Detail")),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListDetail())); //ir a lista
            },
            child: const Text("Lista"))
      ],
    );
  }
}
