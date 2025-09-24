void main() {
  print('=== PROGRAM SEDERHANA ===');
  
  while (true) {
    print('\nPilih program:');
    print('1. Cek Bilangan Prima');
    print('2. Hitung Faktorial');
    print('3. Lihat Riwayat');
    print('4. Keluar');
    stdout.write('Pilihan (1-4): ');
    
    String pilihan = stdin.readLineSync()!;
    
    if (pilihan == '1') {
      cekPrima();
    } else if (pilihan == '2') {
      hitungFaktorial();
    } else if (pilihan == '3') {
      tampilkanRiwayat(riwayat);
    } else if (pilihan == '4') {
      print('Terima kasih!');
      break;
    } else {
      print('Pilihan salah!');
    }
  }
}

// Program 1: Cek Bilangan Prima
void cekPrima() {
  stdout.write('Masukkan bilangan: ');
  int angka = int.parse(stdin.readLineSync()!);
  
  bool prima = true;
  if (angka < 2) {
    prima = false;
  } else {
    for (int i = 2; i <= angka ~/ 2; i++) {
      if (angka % i == 0) {
        prima = false;
        break;
      }
    }
  }
  
  String hasil = prima ? '$angka adalah bilangan PRIMA'
                       : '$angka BUKAN bilangan prima';
  print(hasil);

  // Simpan ke riwayat
  riwayat.add({
    'jenis': 'Cek Prima',
    'input': angka,
    'hasil': hasil
  });
}

// Program 2: Hitung Faktorial
void hitungFaktorial() {
  stdout.write('Masukkan bilangan: ');
  int angka = int.parse(stdin.readLineSync()!);
  
  if (angka < 0) {
    print('Tidak bisa menghitung faktorial bilangan negatif');
    riwayat.add({
      'jenis': 'Faktorial',
      'input': angka,
      'hasil': 'Bilangan negatif'
    });
    return;
  }
  
  int hasil = 1;
  for (int i = 1; i <= angka; i++) {
    hasil *= i;
  }
  
  print('$angka! = $hasil');

  // Simpan ke riwayat
  riwayat.add({
    'jenis': 'Faktorial',
    'input': angka,
    'hasil': '$hasil'
  });
}