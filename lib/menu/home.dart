import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/controller/makanan_controller.dart';
import 'package:pas_mobile/routes.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final controller = Get.put(MakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Makanan"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return InkWell(
              onTap: () {
                Get.toNamed(
                  Routes.detailmakanan,
                  arguments: makanan,
                );
              },
              child: Card(
                elevation: 10,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(
                        makanan.namaMakanan,
                        style: TextStyle(fontSize: 40),
                    ),
                    subtitle: Text(
                        "Rp. ${makanan.hargaMakanan}",
                        style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}