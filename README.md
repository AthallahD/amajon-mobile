# amajon_mobile

## README.md tugas Flutter
- [README.md Tugas 7](#Tugas-7)

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