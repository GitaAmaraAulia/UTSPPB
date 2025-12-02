import 'package:flutter/material.dart';
import '../models/tas_model.dart';
import 'grid_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(Icons.shopping_bag_outlined),
            const SizedBox(width: 8),
            const Text('Katalog Tas Stylish'),
          ],
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: theme.primaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Banner
            Container(
              height: 180,
              decoration: BoxDecoration(
                color: const Color(0xFFF9EAF0),
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  image: AssetImage(tasList[0].gambar),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.25), BlendMode.dstATop),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    bottom: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Koleksi Musim Ini', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text('Tas stylish & pilihan untukmu', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Row of quick buttons using Row + Column
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () => Navigator.pushNamed(context, GridPage.routeName),
                    icon: const Icon(Icons.grid_view),
                    label: const Text('Katalog (Grid)'),
                    style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 14)),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // go to first item detail as contoh
                      Navigator.pushNamed(context, '/detail', arguments: tasList[0]);
                    },
                    icon: const Icon(Icons.info_outline),
                    label: const Text('Detail Favorit'),
                    style: OutlinedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 14)),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Some info cards using combination Row & Column
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Kenapa pilih tas ini?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: const [
                              Icon(Icons.verified, size: 28),
                              SizedBox(height: 8),
                              Text('Kualitas Terjamin', textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: const [
                              Icon(Icons.local_shipping, size: 28),
                              SizedBox(height: 8),
                              Text('Pengiriman Cepat', textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Preview grid small (horizontal)
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Preview Koleksi', style: Theme.of(context).textTheme.titleLarge),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 160,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: tasList.length,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  final tas = tasList[index];
                  return GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/detail', arguments: tas),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        tas.gambar,
                        width: 140,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 28),

            // Footer / call to action
            Card(
              color: const Color(0xFFFFF0F6),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    const Icon(Icons.email_outlined),
                    const SizedBox(width: 12),
                    Expanded(child: Text('Ingin katalog lengkap? Hubungi: katalog@example.com')),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, GridPage.routeName),
                      child: const Text('Lihat Katalog'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
