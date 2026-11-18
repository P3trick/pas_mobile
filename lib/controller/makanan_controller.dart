import 'package:get/get.dart';
import 'package:pas_mobile/models/makanan_model.dart';

class MakananController extends GetxController {

  RxList<MakananModel> listMakanan = [

  MakananModel(
    gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnY_vWaNDRkkqnz3H1IP84detEl2sBKNr_chXin3Rx4K7wZ5YIdResrt-K&s=10',
    namaMakanan: 'Nasi Goreng Spesial',
    deskripsiMakanan: 'Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk.',
    hargaMakanan: 'Rp25.000',
  ),
  MakananModel(
    gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx_XP3KIIaL2EWZTJiGMWUm4QrXu5_kDyp-BawZNsXGMXukvNMtMr-GUcE&s=10',
    namaMakanan: 'Ayam Bakar Madu',
    deskripsiMakanan: 'Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.',
    hargaMakanan: 'Rp30.000',
  ),
  MakananModel(
    gambarMakanan: 'https://www.dapurkobe.co.id/wp-content/uploads/soto-ayam.jpg',
    namaMakanan: 'Sate Ayam Madura',
    deskripsiMakanan: '10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.',
    hargaMakanan: 'Rp28.000',
  ),
  MakananModel(
    gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJKePZgkk1dNd2Fiy8UfT-2BUdS86BMlGS5hwf57598RWbG3jT5yd_1cc&s=10',
    namaMakanan: 'Mie Ayam Bakso',
    deskripsiMakanan: 'Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.',
    hargaMakanan: 'Rp20.000',
  ),
  MakananModel(
    gambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwJ4llazZfm183hLfhCmrHvNqusJ0uH37O65jJAGbdA&s=10',
    namaMakanan: 'Es Teh Manis Jumbo',
    deskripsiMakanan: 'Minuman teh melati segar dengan gula asli dan es batu kristal.',
    hargaMakanan: 'Rp8.000',
  ),

  ].obs;

}