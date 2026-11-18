
import 'package:get/get.dart';

class Hitung extends GetxController {

  var hasil = 0.0.obs;

  void total(double harga, double jumlah) {
    double subtotal = harga * jumlah ;
    double ppn = subtotal + (subtotal * 0.05);
    double total = subtotal + ppn;
    hasil.value = total;
    Get.snackbar(
      "total", 
      "Total : $total");
  }
}