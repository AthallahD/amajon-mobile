# amajon_mobile

## README.md tugas Flutter
- [README.md Tugas 7](#Tugas-7)
- [README.md Tugas 8](#Tugas-8)

# Tugas-7
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

### Stateless Widget
Stateless widget adalah widget yang tidak memiliki state internal. Ini berarti widget ini statis dan tampilannya tidak berubah selama aplikasi berjalan. Jika kita menggunakan StatelessWidget, itu artinya widget tersebut tidak membutuhkan pembaruan atau perubahan data secara dinamis. Biasanya digunakan untuk elemen UI yang tidak interaktif atau tidak memerlukan perubahan, seperti teks atau gambar yang hanya ditampilkan satu kali.

### Stateful Widget
StatefulWidget adalah widget yang memiliki state dan dapat berubah secara dinamis. Ini berarti widget ini interaktif, dan tampilannya dapat diperbarui berdasarkan input pengguna atau perubahan data. StatefulWidget biasanya digunakan untuk widget yang perlu di-update atau diubah tampilannya saat terjadi suatu aksi atau event, seperti tombol yang bisa ditekan, slider, atau counter.

### Perbedaan
1. State : pada Stateless Widget tidak bisa berubah, sedangkan Stateful Widget dapat berubah
2. Pembaruan UI : Pada Stateless WIdget tidak perlu perbarui UI, sedangkan Stateful Widget memperbarui dengan `SetState()`
3. Penggunaan Umum : Elemen statis pada Stateless Widget, Elemen interaktif pada Stateful Widget
4. Kebutuhan kelas state : Tidak memerlukan kelas state pada Stateless Widget, tetapi diperlukan pada Stateful Widget

## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
1. MyApp (StatelessWidget):
    - Ini adalah widget utama aplikasi yang memulai aplikasi dengan MaterialApp.
    - Berfungsi sebagai root aplikasi, mengatur MaterialApp sebagai kerangka kerja dasar.

2. MaterialApp:
    - Menyediakan berbagai konfigurasi global seperti title, theme, dan halaman awal (home) aplikasi.
    - Menggunakan ThemeData untuk menerapkan tema warna merah.

3. ThemeData:
    - Mengatur tema aplikasi secara keseluruhan, termasuk ColorScheme.
    - Dalam contoh ini, warna utama (primary) adalah merah, dengan warna sekunder (secondary) merah tua.

4. MyHomePage (StatelessWidget):
    - Halaman utama aplikasi yang menampilkan beberapa informasi seperti NPM, nama, dan kelas.
    - Memiliki daftar ItemHomepage yang digunakan untuk membuat menu.

5. Scaffold:
    - Kerangka dasar halaman yang menyediakan AppBar dan body.
    - Mempermudah pengaturan struktur dasar UI halaman.

6. AppBar:
    - Menampilkan judul aplikasi pada bagian atas halaman dengan - gaya teks khusus dan warna latar sesuai tema.

7. Padding:
    - Mengatur jarak di sekitar widget untuk tampilan yang lebih rapi.

8. Column dan Row:
    - Digunakan untuk menyusun widget secara vertikal (Column) dan horizontal (Row).
    - Dalam proyek ini, Row menampung tiga InfoCard untuk menampilkan data seperti NPM, nama, dan kelas.

9. InfoCard (StatelessWidget):
    - Kartu informasi yang menampilkan judul (misalnya, NPM) dan isinya (misalnya, nilai NPM).
    - Menggunakan Card untuk memberikan tampilan seperti kartu dengan bayangan ringan.

10. SizedBox:
    - Menyediakan jarak antar widget atau mengatur ukuran widget.

11. GridView.count:
    - Menampilkan menu dalam bentuk grid dengan tiga kolom.
    - Setiap item dalam GridView adalah ItemCard yang berasal dari daftar ItemHomepage.

12. ItemHomepage (Model Data):
    - Model data sederhana yang menyimpan name dan icon untuk setiap item dalam menu.

13. ItemCard (StatelessWidget):
    - Kartu yang menampilkan ikon dan nama item.
    - Menggunakan Material dengan InkWell untuk memberikan efek klik pada kartu.

14. SnackBar:
    - Digunakan untuk menampilkan pesan sementara di bagian bawah layar ketika pengguna menekan ItemCard.

## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah fungsi yang sangat penting dalam widget berbasis StatefulWidget di Flutter. Fungsinya adalah untuk memberi tahu Flutter bahwa ada perubahan pada state dari widget yang perlu ditampilkan ulang di layar. Ketika setState() dipanggil, Flutter akan menjalankan ulang metode build() dari widget tersebut, dan hasilnya adalah tampilan yang diperbarui dengan kondisi terbaru. Hanya variabel-variabel dalam State yang dideklarasikan dalam widget Stateful yang bisa diubah dengan setState(). Beberapa contohnya:

1. Boolean untuk Menyembunyikan/Menampilkan Widget: 
    Misalnya, jika kita ingin menyembunyikan atau menampilkan bagian dari UI, kita bisa menggunakan boolean yang diubah dengan setState().

2. List atau Daftar: 
    Jika Anda memiliki daftar item yang ditampilkan dalam UI, menambah atau menghapus item dari daftar dengan setState() akan memperbarui daftar yang ditampilkan.

3. String dan Teks Lainnya: 
    Jika teks yang ditampilkan di layar berubah berdasarkan kondisi tertentu, kita bisa menggunakan setState() untuk memperbarui teks tersebut.

4. Warna atau Style Lainnya: 
    Variabel yang menentukan warna, ukuran font, atau elemen gaya lainnya pada UI juga bisa diubah melalui setState().

## Jelaskan perbedaan antara `const` dan `final`.
### const (Constant)
- Nilai Konstanta yang Imenable (Immutable): Variabel yang dideklarasikan dengan const memiliki nilai yang bersifat compile-time constant, artinya nilainya harus ditentukan pada saat kompilasi dan tidak bisa diubah setelah itu.
- Bersifat Immutable: Semua objek yang dibuat dengan const benar-benar immutable, yang berarti setiap aspek dari objek tersebut tidak dapat diubah setelah inisialisasi.
- Diakses Secara Global: Karena const adalah konstanta waktu kompilasi, objek yang dibuat dengan const akan diakses sebagai objek tunggal di memori, sehingga tidak akan terjadi pembuatan objek baru jika const tersebut digunakan di beberapa tempat.

### final (Final)
- Nilai Ditentukan Saat Run-Time: Variabel yang dideklarasikan dengan final hanya dapat diinisialisasi satu kali, tetapi nilainya dapat ditentukan saat run-time. Artinya, kita tidak perlu mengetahui nilai dari variabel ini pada saat kompilasi, tetapi setelah diberi nilai sekali, tidak bisa diubah.
- Immutable pada Level Referensi: Objek yang dideklarasikan dengan final tidak bisa diubah setelah inisialisasi, tetapi isinya (untuk tipe data koleksi seperti List atau Map) masih bisa dimodifikasi.
- Konteks yang Fleksibel: final cocok digunakan ketika kita hanya ingin memastikan bahwa variabel tidak akan berubah, tetapi nilai yang dipegangnya baru diketahui di runtime.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
### Membuat tiga tombol sederhana dengan ikon dan teks untuk `Lihat daftar produk`, `Tambah produk`, dan `logout`
```dart
final List<ItemHomepage> items = [
        ItemHomepage("Lihat Daftar Produk", Icons.production_quantity_limits_rounded),
        ItemHomepage("Tambah Produk", Icons.add),
        ItemHomepage("Logout", Icons.logout),
];
```

### Mengimplementasikan warna-warna yang berbeda untuk setiap tombol.
```dart
final List<Color> colors = [
    Colors.pinkAccent.shade100,
    Colors.lightBlueAccent.shade100,
    Colors.lightGreenAccent.shade100,
];

class ItemCard extends StatelessWidget {
  final ItemHomepage item; 
  final Color color;
  
  const ItemCard(this.item, {required this.color, super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(20), // Rounding yang lebih besar
      elevation: 5.0, // Tambahkan bayangan untuk efek modern
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
   ...     
```
### Memunculkan Snackbar dengan tulisan: "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol `Lihat Daftar Produk` ditekan, "Kamu telah menekan tombol Tambah Produk" ketika tombol `Tambah Produk` ditekan. "Kamu telah menekan tombol Logout" ketika tombol `Logout` ditekan.
```dart
    ...
        ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
            SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
        );
    ...
```

# Tugas-8
## Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?
Di Flutter, keyword `const` digunakan untuk mendeklarasikan objek yang bersifat immutable (tidak bisa diubah setelah dibuat) dan membuatnya sebagai compile-time constant. Ini sangat bermanfaat dalam aplikasi yang memerlukan efisiensi tinggi dan pengoptimalan memori.

### Kegunaan `const`
1. Mengurangi Rekreasi Widget: Flutter membuat antarmuka pengguna melalui widget, dan `const` membantu mengurangi pembuatan ulang widget secara berulang-ulang. Ketika sebuah widget atau objek diberi const, Flutter akan tahu bahwa objek tersebut tidak perlu dibuat ulang karena nilainya tidak berubah.

2. Optimasi Memory dan Kinerja: Dengan `const`, objek hanya dibuat sekali dan disimpan di memori, yang artinya tidak akan ada salinan yang dibuat setiap kali objek tersebut digunakan. Ini menghemat memori dan mengurangi beban proses.

3. Widget Stateless yang Konsisten: Pada widget yang bersifat stateless (tidak memiliki state yang berubah), `const` sangat berguna karena tidak ada perubahan nilai dari widget tersebut, sehingga menjadikannya ideal untuk objek-objek yang konstan.

### Keuntungan menggunakan `const`
1. Penggunaan Memori yang Efisien: `const` memungkinkan aplikasi menggunakan satu instance objek di berbagai tempat alih-alih membuat instance baru setiap kali. Ini dapat mengurangi penggunaan memori secara signifikan.

2. Performa Rendering yang Lebih Cepat: Saat widget menggunakan const, Flutter tidak perlu memeriksa ulang perubahan di widget tersebut, sehingga proses rendering lebih cepat karena widget tersebut tidak di-rebuild setiap kali ada perubahan di parent-nya.

3. Kode yang Lebih Bersih dan Dapat Diprediksi: Menggunakan `const` membuat kode lebih konsisten dan mudah dipahami. Dengan const, developer dapat dengan mudah mengetahui bahwa objek tersebut tidak akan berubah, sehingga membuat pemeliharaan kode lebih sederhana.

### Kapan sebaiknya menggunakan `const`
1. Di Stateless Widgets: Jika widget Anda tidak memiliki state yang berubah dan bersifat tetap, gunakan `const` di depan konstruktor widget tersebut.

2. Nilai Tetap: Gunakan `const` untuk nilai tetap seperti warna, padding, margin, teks yang tidak berubah, dan properti layout yang tidak perlu diubah di runtime.

3. List atau Map Konstan: Ketika menggunakan list atau map yang tidak akan dimodifikasi, gunakan `const` agar list atau map tersebut menjadi immutable.

### Kapan sebaiknya tidak menggunakan `const`
1. Di Stateful Widgets yang Berubah: Pada stateful widgets, biasanya nilai widget dapat berubah sepanjang waktu, sehingga `const` kurang sesuai karena memaksa widget tersebut tidak berubah.

2. Data yang Diambil dari Sumber Luar: Jika nilai bergantung pada input atau data yang diperoleh dari sumber eksternal (misalnya API, user input), maka `const` tidak cocok karena data tersebut mungkin berubah.

3. Kondisi Dinamis: Jika Anda memiliki kondisi dinamis atau perubahan di dalam aplikasi yang memerlukan widget untuk di-render ulang dengan nilai yang berbeda, maka jangan gunakan `const`.

## Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Di Flutter, `Column` dan `Row` adalah dua widget penting yang digunakan untuk membuat tata letak vertikal dan horizontal. Keduanya memungkinkan penataan widget di dalam container dengan berbagai properti untuk mengontrol posisi, ukuran, dan spasi di antara elemen-elemen di dalamnya.

### `Column`
1. Menampilkan elemen dalam urutan vertikal.
2. Cocok untuk tata letak yang memerlukan elemen-elemen ditumpuk ke bawah seperti daftar teks, gambar, atau tombol.

### `Row`
1. Menampilkan elemen secara horizontal, cocok untuk tata letak yang memerlukan elemen-elemen sejajar secara horizontal seperti ikon, teks, atau tombol.
2. Ideal untuk membuat baris item atau struktur yang harus ditempatkan secara bersebelahan.

### Contoh penggunaan `Column` dan `Row`
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text('First Item'),
    Text('Second Item'),
    Text('Third Item'),
  ],
)
```
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.star),
    Text('Hello'),
    Icon(Icons.star),
  ],
)
```

##  Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Elemen input yang digunakan:
- TextFormField, Digunakan untuk menginput teks pada kolom Product Name, Description, dan Product Amount.
- ElevatedButton, Digunakan sebagai tombol untuk menyimpan data produk ketika form sudah diisi dengan benar.

Elemen input yang tidak digunakan:
- DropdownButtonFormField, cocok untuk memberikan pilihan terbatas dari opsi yang ada, seperti kategori produk atau jenis produk.
- Checkbox, digunakan untuk input pilihan biner, seperti konfirmasi atau persetujuan dari pengguna.
- Slider, cocok untuk input dengan rentang nilai, seperti harga atau tingkat kepuasan.

## Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Mengatur konsistensi tampilan aplikasi dengan menggunakan Theme data pada `main.dart`. Di dalamnya terdapat color scheme untuk memastikan tema aplikasi terjaga dan sama.

## Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
```dart
import 'package:flutter/material.dart';
import 'package:amajon_mobile/screens/menu.dart';
import 'package:amajon_mobile/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Amajon Mobile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Aplikasi Jual Beli Online Terbaik di Indonesia!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.production_quantity_limits_rounded),
            title: const Text('Tambah Item'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductEntryFormPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
```