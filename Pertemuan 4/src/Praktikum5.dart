(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var sebelumTukar = (4, 2);
  print('Sebelum tukar: $sebelumTukar');

  var setelahTukar = tukar(sebelumTukar);
  print('Setelah tukar: $setelahTukar');

  print('');
  (String, int) mahasiswa = ('Sesy Tana Lina Rahmatin', 2341720029);
  print(mahasiswa);

  print('');
  var mahasiswa2 = ('Sesy Tana Lina Rahmatin', a: 2341720029, b: true, 'last');
  print('.\$1: ${mahasiswa2.$1}');
  print('.a: ${mahasiswa2.a}');
  print('.b: ${mahasiswa2.b}');
  print('.\$2: ${mahasiswa2.$2}');
}