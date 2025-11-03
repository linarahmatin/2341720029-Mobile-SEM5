# Pemrograman Mobile - Pertemuan 10

NAMA: Sesy Tana Lina Rahmatin
KELAS: TI-3F
NIM: 2341720029

# Praktikum 1
https://github.com/user-attachments/assets/1c136e16-9068-437d-b21b-cc60382f6e69

# Tugas 1

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.


2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
Jawab :
Langkah 4 adalah membuat file data_layer.dart yang menggabungkan ekspor dari file plan.dart dan task.dart, supaya proses import di file lain lebih praktis dan rapi.

3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
Jawab :
Variabel plan menyimpan kumpulan tugas utama aplikasi. Dideklarasikan dengan const agar memiliki nilai awal yang tidak berubah sampai ada pembaruan lewat setState().

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
Jawab :
https://github.com/user-attachments/assets/1c136e16-9068-437d-b21b-cc60382f6e69
 Tampilan daftar tugas dibuat dengan ListTile yang terdiri dari Checkbox dan TextFormField. Fitur ini memungkinkan pengguna untuk menambah, mengedit, atau menandai tugas selesai, dan hasilnya langsung terlihat karena memanfaatkan setState().

5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
   Jawab :
- Fungsi initState() dipanggil sekali ketika widget diinisialisasi untuk menyiapkan ScrollController.
  
- Kemudian dispose() digunakan saat widget dihentikan guna melepaskan sumber daya agar tidak terjadi kebocoran memori.

6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

# Praktikum 2
https://github.com/user-attachments/assets/56d3bcdd-2fed-41b9-a8ec-43bc95ae7525

# Tugas 2
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.

2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
Jawab :
Bagian InheritedWidget diwakili oleh kelas
PlanProvider extends InheritedNotifier<ValueNotifier>.
Widget ini memungkinkan data Plan diakses oleh semua widget anak tanpa harus dikirim satu per satu lewat konstruktor.
Karena menggunakan ValueNotifier sebagai penyimpan data, maka digunakan InheritedNotifier agar setiap perubahan nilai otomatis memperbarui tampilan tanpa harus memanggil setState() secara manual.

3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
Jawab :
Digunakan untuk mengetahui jumlah tugas yang sudah selesai, lalu menampilkan teks progres seperti “2 out of 5 tasks”. Dengan cara ini, pengguna dapat melihat perkembangan Plan secara langsung di tampilan aplikasi.

4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
Jawab :
https://github.com/user-attachments/assets/56d3bcdd-2fed-41b9-a8ec-43bc95ae7525
Hasil akhir menampilkan:
- Kumpulan tugas yang bisa diedit deskripsinya.
- Kotak centang untuk menandai tugas yang sudah rampung.
- Tombol + untuk menambahkan tugas baru.
- Bagian bawah menunjukkan kemajuan, misal “3 dari 5 tugas selesai”.

5. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !

# Praktikum 3
https://github.com/user-attachments/assets/7003ecc2-f7c7-45de-a163-be7a2d69713b

# Tugas Praktikum
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.

2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!
<img src="D:\Semester 5\Mobile\Pertemuan 10\img\img1.png" alt="No2"/>
Jawab: 
Ilustrasi kiri (warna biru) memperlihatkan susunan widget saat aplikasi berada di halaman awal (PlanCreatorScreen). Pada tahap ini, pengguna dapat membuat dan menambah daftar rencana.
- MaterialApp berperan sebagai komponen utama aplikasi.
- PlanProvider digunakan sebagai penyimpanan data global melalui InheritedNotifier.
- PlanCreatorScreen menyediakan TextField untuk memasukkan nama rencana dan ListView untuk menampilkan daftar rencana yang sudah dibuat.
Ilustrasi kanan (warna hijau) menunjukkan kondisi setelah pengguna memilih salah satu rencana. Aplikasi kemudian berpindah ke halaman baru (PlanScreen) melalui Navigator.push.
Pada halaman ini ditampilkan daftar tugas yang terkait dengan rencana yang dipilih.
Terdapat ListView yang menampilkan tugas-tugas tersebut dan sebuah Text untuk menampilkan progres penyelesaian.

3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
Jawab : 
https://github.com/user-attachments/assets/7003ecc2-f7c7-45de-a163-be7a2d69713b

- Pada halaman utama, pengguna memasukkan nama rencana baru dan menambahkannya ke daftar.
- Daftar rencana yang telah dibuat akan muncul di bagian bawah layar.
- Ketika pengguna memilih salah satu rencana, aplikasi berpindah menuju halaman detail (PlanScreen).
- Pada halaman tersebut, pengguna bisa menambahkan task, menandai task sebagai selesai, dan progress akan diperbarui secara otomatis sesuai perubahan.

4. umpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke dosen yang telah disepakati !


