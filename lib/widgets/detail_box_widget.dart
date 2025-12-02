import 'package:flutter/material.dart';
import '../models/tas_model.dart';

class DetailBoxWidget extends StatelessWidget {
  final TasModel tas;

  const DetailBoxWidget({super.key, required this.tas});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tas.nama,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text('Rp ${tas.harga}', style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 12),
          Text(tas.deskripsi),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Ditambahkan ke keranjang (contoh)')),
                    );
                  },
                  icon: const Icon(Icons.shopping_bag_outlined),
                  label: const Text('Tambah ke Keranjang'),
                  style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(12)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
