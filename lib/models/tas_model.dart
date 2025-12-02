class TasModel {
  final String id;
  final String nama;
  final String gambar; // path asset
  final String deskripsi;
  final int harga;

  TasModel({
    required this.id,
    required this.nama,
    required this.gambar,
    required this.deskripsi,
    required this.harga,
  });
}

/// sample data
final List<TasModel> tasList = [
  TasModel(
    id: 't1',
    nama: 'Tas Tote Cream',
    gambar: 'assets/images/1.jpg',
    deskripsi: 'Tas tote besar, cocok untuk kerja atau kuliah. Bahan kanvas lembut.',
    harga: 150000,
  ),
  TasModel(
    id: 't2',
    nama: 'Tas Selempang Hitam',
    gambar: 'assets/images/2.jpg',
    deskripsi: 'Selempang kecil, desain minimalis, cocok untuk sehari-hari.',
    harga: 125000,
  ),
  TasModel(
    id: 't3',
    nama: 'Backpack Navy Maroon',
    gambar: 'assets/images/3.jpg',
    deskripsi: 'Backpack stylish dengan banyak kompartemen, cocok untuk traveling.',
    harga: 300000,
  ),  
  TasModel(
    id: 't4',
    nama: 'Clutch Merah Muda',
    gambar: 'assets/images/4.jpg',
    deskripsi: 'Clutch elegan untuk acara formal, dengan aksen manik-manik.',
    harga: 200000,
  ),
  TasModel(
    id: 't5',
    nama: 'Messenger Bag Coklat',
    gambar: 'assets/images/5.jpg',
    deskripsi: 'Messenger bag dari kulit sintetis, cocok untuk pria dan wanita.',
    harga: 275000,
  ),
  TasModel(
    id: 't6',
    nama: 'Bag Abu-abu',
    gambar: 'assets/images/6.jpg',
    deskripsi: 'Duffel bag besar, ideal untuk gym atau perjalanan singkat.',
    harga: 350000,
  ),
  TasModel(
    id: 't7',
    nama: 'Trapeze Bag Hitam',
    gambar: 'assets/images/7.jpg',
    deskripsi: 'Waist bag compact, praktis untuk menyimpan barang penting saat bepergian.',
    harga: 100000,
  ),
  TasModel(
    id: 't8',
    nama: 'Satchel Krem',
    gambar: 'assets/images/8.jpg',
    deskripsi: 'Satchel klasik dengan desain vintage, cocok untuk tampilan kasual.',
    harga: 225000,
  ),
  TasModel(
    id: 't9',
    nama: 'Hobo Bag Coklat Muda',
    gambar: 'assets/images/9.jpg',
    deskripsi: 'Hobo bag dengan bentuk melengkung, memberikan kesan santai namun stylish.',
    harga: 180000,
  ),
  TasModel(
    id: 't10',
    nama: 'Tote Bag Floral',
    gambar: 'assets/images/10.jpg',
    deskripsi: 'Tote bag dengan motif floral yang ceria, cocok untuk musim panas.',
    harga: 160000,
  ),
];
