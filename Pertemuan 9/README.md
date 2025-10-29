# Pemrograman Mobile - Pertemuan 9

NAMA: Sesy Tana Lina Rahmatin
KELAS: TI-3F
NIM: 2341720029

# Praktikum 1
output:
<img src="img/p1.jpg" alt="No2"/>

# Praktikum 2
output:
<img src="img/p2.jpg" alt="No2"/>


3.Jelaskan maksud void async pada praktikum 1?
Kata kunci async menandakan bahwa fungsi tersebut bersifat asynchronous, dapat “menunggu” hasil operasi yang lama tanpa membekukan UI. Tipe kembalian void berarti fungsi ini tidak mengembalikan nilai apa-apa.

4.Jelaskan fungsi dari anotasi @immutable dan @override ?
- @immutable : Menandai bahwa semua field dalam class bersifat final—setelah objek dibuat tidak boleh diubah lagi. Membantu Flutter mengetahui bahwa widget tersebut “frozen”, sehingga kerangka kerja dapat mengoptimalkan proses diff saat build.
- @override : Menyatakan bahwa method/property sedang “menimpa” implementasi dari kelas induk atau interface. Fungsinya mencegah salah ketik sekaligus memastikan kita benar-benar men-override sesuatu yang ada.