import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unguided_13/view_model/note_controller.dart';

class AddNotePage extends StatelessWidget {
  const AddNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final NoteController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Catatan'),
         backgroundColor: const Color.fromARGB(255, 44, 156, 201), // Mengubah warna AppBar menjadi ungu
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Judul'),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: 'Masukkan judul catatan',
                border: OutlineInputBorder(), // Membuat kotak
              ),
            ),
            const SizedBox(height: 16),
            const Text('Deskripsi'),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                hintText: 'Masukkan deskripsi catatan',
                border: OutlineInputBorder(), // Membuat kotak
              ),
              maxLines: 5, // Tambahan agar lebih cocok untuk deskripsi panjang
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                if (titleController.text.isNotEmpty &&
                    descriptionController.text.isNotEmpty) {
                  controller.addNote(
                    titleController.text,
                    descriptionController.text,
                  );
                  Get.back(); // Kembali ke halaman utama
                }
              },
              child: const Text('Simpan Catatan'),
            ),
          ],
        ),
      ),
    );
  }
}
