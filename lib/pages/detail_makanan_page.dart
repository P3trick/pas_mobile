import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/controller/detail_makanan_controller.dart';
import 'package:pas_mobile/controller/hitung.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());
  final hitung = Get.put(Hitung());
  final TextEditingController txtAngka1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Makanan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Image.network(
              controller.gambarMakanan,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            
            Text(
              controller.namaMakanan,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            
            Text(
              controller.deskripsiMakanan,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            
            Text(
              "Harga: ${controller.hargaMakanan}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),
            
            Text(
              "PPN 5%",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8),

            TextField(
              controller: txtAngka1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Jumlah Makanan",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
                onPressed: () {
                  double harga = double.tryParse(controller.hargaMakanan) ?? 0.0;
                  double jumlah = double.tryParse(txtAngka1.text) ?? 0.0;
                  hitung.total(harga, jumlah);
                },
                child: Text("bayar", style: TextStyle(color: Colors.black)),
              ),
            Obx(
                () => Text(
                  hitungController.hasil.toString(),
                  style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),

          ],
        ),
      ),
    );
  }
}