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