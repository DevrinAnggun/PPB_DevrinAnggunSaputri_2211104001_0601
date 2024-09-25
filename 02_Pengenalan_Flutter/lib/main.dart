import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Biodata Saya'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          // Mengubah latar belakang gradient
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.green, // Mengubah warna gradasi menjadi hijau
              Colors.teal, 
              Colors.lightBlueAccent, 
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage('../assets/aku.jpg'), // gambar profil
                ),
                const SizedBox(height: 20),
                const Text(
                  'Nama: Devrin Anggun Saputri',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Email: devrinanggun90@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Telepon: +6281229035962',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Alamat: Jl. Sherma Mukhlas, Karangtengah, Banjarnegara',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Majoring: S1 Software Engineering at Telkom University Purwokerto',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Aksi saat tombol ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.white, // Warna latar belakang tombol
                    foregroundColor: Colors.deepPurple, // Warna teks tombol
                  ),
                  child: const Text('Hubungi Saya'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
