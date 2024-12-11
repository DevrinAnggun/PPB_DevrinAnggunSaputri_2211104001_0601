import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unguided_13/view_model/note_controller.dart';
import 'package:unguided_13/view/add_note_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final NoteController controller = Get.put(NoteController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Catatan'),
        backgroundColor: const Color.fromARGB(255, 44, 156, 201), // Warna AppBar
      ),
      body: Obx(() {
        // Menampilkan daftar catatan
        if (controller.notes.isEmpty) {
          return const Center(
            child: Text('Tidak ada catatan'),
          );
        }
        return ListView.builder(
          itemCount: controller.notes.length,
          itemBuilder: (context, index) {
            final note = controller.notes[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Judul:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        note.title,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Deskripsi:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        note.description,
                        style: const TextStyle(fontSize: 14),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            controller.deleteNote(index); // Menghapus catatan
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddNotePage()); // Navigasi ke halaman tambah catatan
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
