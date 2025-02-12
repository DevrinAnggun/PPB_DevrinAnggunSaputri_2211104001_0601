import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_13/view/detail_page.dart';
import 'package:praktikum_13/view_model/counter_controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // Menginisialisasi controller
    final CounterController controller = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
                  controller.counter.value.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(DetailPage());
              },
              child: const Text('Ke Halaman Detail'),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.only(bottom: 20), // Jarak dari bawah layar
        child: Row(
          mainAxisSize: MainAxisSize.min, // Membatasi ukuran ke konten tombol
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: controller.incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: controller.decrementCounter,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
            onPressed: controller.getsnackbar,
            tooltip: 'Get Snackbar',
            child: const Icon(Icons.message),
          ),
            FloatingActionButton(
            onPressed: controller.getbottonsheet,
            tooltip: 'Get Bottom Sheet',
            child: const Icon(Icons.bolt_outlined),
          ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, // Tambahkan ini agar tombol berada di tengah
    );
  }
}