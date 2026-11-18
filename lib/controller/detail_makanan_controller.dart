import "package:get/get.dart";
import 'package:pas_mobile/models/makanan_model.dart';

class DetailMakananController extends GetxController {

  late String namaMakanan; 
  late String deskripsiMakanan;
  late String gambarMakanan;
  late String hargaMakanan;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      MakananModel makanan = Get.arguments;
      namaMakanan = makanan.namaMakanan;
      deskripsiMakanan = makanan.deskripsiMakanan;
      gambarMakanan = makanan.gambarMakanan;
      hargaMakanan = makanan.hargaMakanan;
    }
  }
}