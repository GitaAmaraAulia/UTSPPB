import 'package:flutter/material.dart';
import '../models/tas_model.dart';
import '../widgets/detail_box_widget.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail';

  final TasModel tas;
  const DetailPage({super.key, required this.tas});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6F9),
      body: SafeArea(
        child: Column(
          children: [
            // Stack area: image + buttons overlay
            SizedBox(
              height: screenHeight * 0.48,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      tas.gambar,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(color: Colors.grey[200]),
                    ),
                  ),
                  // gradient overlay for readability
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black.withOpacity(0.15), Colors.transparent],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ),
                  // back button and favorite on top
                  Positioned(
                    left: 12,
                    top: 12,
                    child: CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 12,
                    top: 12,
                    child: CircleAvatar(
                      backgroundColor: Colors.white70,
                      child: IconButton(
                        icon: const Icon(Icons.favorite_border),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Ditandai favorit (contoh)')));
                        },
                      ),
                    ),
                  ),
                  // small caption at bottom-left of image
                  Positioned(
                    left: 16,
                    bottom: 16,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tas.nama, style: const TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          Text('Rp ${tas.harga}'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Deskripsi (scrollable)
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // use the custom widget for details (rounded white panel)
                    const SizedBox(height: 12),
                    DetailBoxWidget(tas: tas),
                    const SizedBox(height: 16),
                    // Additional info / gallery
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Spesifikasi Tambahan', style: TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          const Text('- Bahan : Kanvas / kulit sintetis / kulit asli (variasi)\n- Dimensi : 30cm x 25cm x 10cm\n- Warna : Sesuai gambar'),
                          const SizedBox(height: 16),
                          const Text('Review Pengguna', style: TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Alya', style: TextStyle(fontWeight: FontWeight.bold)),
                                  SizedBox(height: 6),
                                  Text('Tasnya lucu dan nyaman dipakai sehari-hari. Kualitas jahitan rapi.'),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
