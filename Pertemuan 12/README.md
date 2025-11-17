# Pemrograman Mobile - Pertemuan 12

### NAMA: Sesy Tana Lina Rahmatin
### KELAS: TI-3F
### NIM: 2341720029

# soal 1
- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
  ![Image](https://github.com/user-attachments/assets/fbe27472-d89b-4e7f-8645-0aef3c8e71af)

# Soal 2
- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.

   ![Image](https://github.com/user-attachments/assets/d2ca6e42-e29c-444f-9438-245520a30567)

# Soal 3
- Jelaskan fungsi keyword yield* pada kode tersebut!

  = yield* digunakan untuk meneruskan seluruh isi stream lain ke dalam stream ini. Dengan kata lain, stream yang dihasilkan       Stream.periodic langsung dipancarkan oleh method getColors() tanpa harus memanggil yield satu per satu.

- Apa maksud isi perintah kode tersebut?

  = Kode tersebut membuat stream yang memunculkan satu warna setiap 1 detik. Nilai t akan bertambah terus, kemudian t %           colors.length memastikan indeks warna berulang dari awal ketika sudah sampai warna terakhir. Hasilnya, stream mengirim        warna secara bergantian setiap detik.

# Soal 4
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

  https://github.com/user-attachments/assets/e18132c4-d06f-4e40-9934-144ced762435

# Soal 5
- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !
  
  = await for membuat fungsi menunggu setiap data dari stream secara berurutan, sehingga alurnya seperti loop yang terus          menanti event baru. Sementara itu, listen tidak menunggu; ia bekerja dengan callback yang langsung dipanggil setiap kali      ada data masuk. Dengan listen, fungsi tetap berjalan normal dan lebih fleksibel karena bisa dihentikan atau                   ditangani saat ada error.

# Soal 6
- Jelaskan maksud kode langkah 8 dan 10 tersebut!

  = Kode 8: Menyiapkan stream dan mendengarkan setiap data baru → update UI.
    Kode 10: Membuat angka acak dan mengirimnya ke stream → listener menerima data → UI berubah.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
  
  ![Image](https://github.com/user-attachments/assets/197cb7e1-459d-4383-8cb2-9ad7dc19be2b)

# soal 7
- Jelaskan maksud kode langkah 13 sampai 15 tersebut!

  = 13	addError()	Mengirim error ke Stream (bukan data).
    14	stream.listen(event)	Menangani data normal yang dikirim ke Stream.
    15	.onError(error)	Menangani error yang dikirim dari Stream dan update UI.

- Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.

  ![Image](https://github.com/user-attachments/assets/d927324b-9931-4a9b-94e2-8b05ea136739)

# Soal 8
- Jelaskan maksud kode langkah 1-3 tersebut!
  = Langkah 1 : Menyiapkan alat pengolah stream
    Langkah 2 : Mengolah data stream: kalikan 10, error → -1
    Langkah 3 : Memasang transformer ke stream sebelum ditampilkan ke UI
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

  ![Image](https://github.com/user-attachments/assets/ed1b928c-5bb9-48a2-9c58-7f15eb5d36d6)

# Soal 9
- Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!
  = Langkah 2
    Pada langkah ini, kita membuat subscription ke stream menggunakan listen(). Subscription ini mendengarkan setiap even         (data baru) yang dikirimkan oleh stream dan menampilkannya di UI dengan setState().

    Langkah 6
    Di method dispose(), dilakukan pemanggilan subscription.cancel() agar berhenti mendengarkan stream ketika widget              dihancurkan. Tujuannya untuk menghindari memory leak karena stream yang masih aktif setelah widget ditutup.

    Langkah 8
    Pada langkah ini, dilakukan pengecekan if (!numberStreamController.isClosed) sebelum menambah data baru. Hal ini mencegah     error saat mencoba menambahkan data ke stream yang sudah ditutup.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
  ![Image](https://github.com/user-attachments/assets/885a6034-ff39-4293-955c-de87333f59f3)

# Soal 10

![Image](https://github.com/user-attachments/assets/342efdc3-3c76-49e1-8874-d004ab437694)

- Jelaskan mengapa error itu bisa terjadi ?
  
  = error tersebut terjadi karena secara default Stream di Dart adalah single-subscription stream, yang berarti hanya satu        subscriber yang dapat mendengarkan aliran data dari stream tersebut. Ketika Anda mencoba untuk menambahkan subscription       kedua ke stream yang sama (stream.listen(...) lagi), maka Dart akan menolak dan menampilkan error “Bad state: Stream has      already been listened to”.

# Soal 11
- Jelaskan mengapa hal itu bisa terjadi ?
  
  = Karena stream sudah diubah menjadi broadcast stream, satu aliran data dapat didengarkan oleh lebih dari satu subscriber       secara bersamaan. Ketika numberStream.addNumberToSink() mengirimkan sebuah nilai baru, semua listener yang terhubung akan     memperoleh event yang sama. Dalam kasus ini terdapat dua subscription aktif, sehingga setiap angka yang dipancarkan           stream diterima dua kali. Akibatnya, teks yang ditampilkan akan bertambah dua kali untuk setiap event yang masuk.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

  https://github.com/user-attachments/assets/78ecfa79-0ef5-4f08-82c9-d1681ee2b159
  
# Soal 12
- Jelaskan maksud kode pada langkah 3 dan 7 !
  
  = Langkah 3 Membuat stream yang secara periodik (setiap 1 detik) menghasilkan angka acak dari 0 sampai 9 menggunakan           Stream.periodic() dan yield*.

    Langkah 7 Menggunakan StreamBuilder untuk menampilkan data dari stream ke layar secara reaktif. Setiap kali ada data         baru di stream, widget StreamBuilder akan memanggil ulang fungsi builder dan memperbarui tampilan teks                       dengan angka terbaru.
  
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
  
  https://github.com/user-attachments/assets/7eb859f1-e9d2-4bc7-8c6c-da54cba24b13

# Soal 13
- Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?

  = Praktikum ini bertujuan menunjukkan cara memisahkan logika bisnis dari tampilan UI menggunakan pola BLoC.
Pada konsep BLoC:
   - File random_bloc.dart berperan sebagai pusat logika BLoC, karena di dalamnya event diterima dan data keluaran (stream)       diproses.
   - StreamController digunakan sebagai pengatur aliran data antara lapisan logika dan UI.
   - Bagian UI di random_screen.dart hanya berfungsi mendengarkan perubahan data melalui StreamBuilder, tanpa mengetahui          bagaimana proses pengacakan angka dilakukan.
     
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

  https://github.com/user-attachments/assets/3d0bcfb1-bacf-4f63-aa5a-37b1c96cf35d

  

