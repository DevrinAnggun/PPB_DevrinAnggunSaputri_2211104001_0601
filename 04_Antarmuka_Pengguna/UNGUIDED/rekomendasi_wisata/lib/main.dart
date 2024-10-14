import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Banyumas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 236, 78, 131)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> places = [
    {
      'name': 'Baturaden',
      'image':
          'https://media-cdn.tripadvisor.com/media/photo-s/0c/e4/37/94/the-baturaden-fountain.jpg',
      'description':
          'Baturaden adalah objek wisata alam di lereng Gunung Slamet dengan pemandangan indah dan udara sejuk.',
    },
    {
      'name': 'Caub Baturaden',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1u08GkfepPC4mxWAFUGIYGpWI65UzpXkJ_g&s',
      'description':
          'Caub Baturaden, atau Camp Area Umbul Bengkok, adalah lokasi camping di Desa Karangsalam, di kaki Gunung Slamet, Banyumas.',
    },
    {
      'name': 'Safari to the Sky',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4FpgKunfnVdgxwHYo0lTIeeZG8rb3JboOdA&s',
      'description':
          'Safari See to Sky adalah destinasi wisata alam baru di Baturaden, Banyumas, yang diresmikan pada Agustus 2023.',
    },
    {
      'name': 'Kebun Raya Baturaden',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRID_Yjy5Y_xSLBe8tFljdw7EHxcbzMBLmvHA&s',
      'description':
          'Kebun Raya Baturaden adalah Kebun Botani yang terdiri dari perkebunan pinus (Pinus merkusii), damar (Agathis borneensis), dan rasamala (Altingia excelsa), serta beberapa jenis rotan sebagai sisipan.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekomendasi Wisata Banyumas'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Mengatur seluruh konten ke tengah
              children: [
                Center(
                  child: Image.network(
                    places[index]['image']!,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(  // Menempatkan teks judul di tengah
                    child: Text(
                      places[index]['name']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(  // Menempatkan deskripsi di tengah
                    child: Text(
                      places[index]['description']!,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,  // Teks rata tengah
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol diklik
                    },
                    child: const Text('Kunjungi Sekarang'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}