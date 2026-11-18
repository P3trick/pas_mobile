import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),

      child: Column(
        spacing: 16.0,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey,
            child: Icon(Icons.person, size: 50, color: Colors.white),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Nama"),
            subtitle: Text("Oscar Angelo P"),
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text("Kelas"),
            subtitle: const Text("11 PPLG 1"),
          ),
          ListTile(
            leading: const Icon(Icons.numbers),
            title: const Text("No.Absen"),
            subtitle: const Text("28"),
          ),
          ListTile(
            leading: const Icon(Icons.note),
            title: const Text("Bio-Singkat"),
            subtitle: const Text("Siswa kelas 11 PPLG 1, bersekolah di Raden Umar Said Kudus."),
          ),
        ],
      ),
    );
  }
}