import 'package:flutter/material.dart';
import 'form_data.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;
  final String shiftbaru;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
    required this.shiftbaru,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Perkenalan",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        backgroundColor: Colors.teal[700],
        centerTitle: true,
        elevation: 5,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildProfileHeader(nama, umur),
            const SizedBox(height: 30),
            _buildInfoSection(
              icon: Icons.badge,
              label: "NIM",
              value: nim,
            ),
            const SizedBox(height: 20),
            _buildInfoSection(
              icon: Icons.cake,
              label: "Umur",
              value: "$umur tahun",
            ),
            const SizedBox(height: 20),
            _buildInfoSection(
              icon: Icons.access_time,
              label: "Shift Baru",
              value: shiftbaru,
            ),
            // Removed the ElevatedButton widget
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(String nama, int umur) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 8,
      shadowColor: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.teal[700],
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 50,
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "$umur tahun",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.teal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection({required IconData icon, required String label, required String value}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      shadowColor: Colors.grey[300],
      child: ListTile(
        leading: Icon(icon, size: 30, color: Colors.teal[700]),
        title: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
