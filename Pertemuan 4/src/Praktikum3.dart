void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Sesy Tana Lina Rahmatin';
  mhs1['nim'] = '2341720029';

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Sesy Tana Lina Rahmatin';
  gifts['nim'] = '2341720029';

  var mhs2 = Map<int, String>();
  mhs2[0] = 'Sesy Tana Lina Rahmatin';
  mhs2[1] = '2341720029';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[0] = 'Sesy Tana Lina Rahmatin';
  nobleGases[1] = '2341720029';

  print('\n=== HASIL ===');
  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1');
  print('mhs2: $mhs2');
}