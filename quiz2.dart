//5 orang tercepat
//lihat quiz 1 ubah menjadi 4 constructor
void main(){
  //var dokter1 = Dokter('Dr.Lin', 'Perempuan', 'Ruang 1', 'DK001', 'Dokter umum');
  //var dokter1 = Dokter(inputid: 'DK001', inputjeniskel: 'Perempuan', inputnama: 'Dr.Lin', inputruang: 'Ruang 1', inputspesialis: 'Dokter umum');
  var dokter1 = Dokter(Spesialis: 'Dokter umum',id: 'DK001',jenisKelamin: 'Perempuan',nama: 'Dr.Lin', ruang: 'Ruang 1');
  dokter1.cetak();

  //var dokter2 = Dokter('Dr.Achiang', 'Laki-laki', 'Ruang 2', 'DK002', 'Dokter gigi');
  //var dokter2 = Dokter(inputnama: 'Dr.Achiang', inputid: 'DK002',inputjeniskel: 'Laki-laki',inputruang: 'Ruang 2',inputspesialis: 'Dokter gigi');
  var dokter2 = Dokter(jenisKelamin: 'Laki-laki',Spesialis: 'Dokter gigi', id: 'DK002', nama: 'Dr.Achiang',ruang: 'Ruang 2');
  dokter2.cetak();
}
class Dokter{
  String? nama;
  String? jenisKelamin;
  String? ruang;
  String? id;
  String? Spesialis;
  
  // //1. positional indirect argumen
  // Dokter(String inputnama, String inputjeniskel, String inputruang, String inputid, String inputspesialis){
  //   this.nama = inputnama;
  //   this.jenisKelamin = inputjeniskel;
  //   this.ruang = inputruang;
  //   this.id = inputid;
  //   this.Spesialis = inputspesialis;
  // }

  // //2.postional direct argumen
  // Dokter(this.nama,this.jenisKelamin, this.ruang, this.id, this.Spesialis);

  // //3. indirect named argumen
  // Dokter({String? inputnama, String? inputjeniskel, String? inputruang, String? inputid, String? inputspesialis}){
  //   this.nama = inputnama;
  //   this.jenisKelamin = inputjeniskel;
  //   this.ruang = inputruang;
  //   this.id = inputid;
  //   this.Spesialis = inputspesialis;
  // }

  //4. direct named argumen
  Dokter({this.nama,this.jenisKelamin, this.ruang, this.id, this.Spesialis});

  cetak(){
    print('=======================');
    print('Nama Dokter adalah $nama');
    print('id Dokter adalah $id');
    print('spesialis Dokter adalah $Spesialis');
    print('ruang Dokter adalah $ruang');
    print('jenis kelamin Dokter adalah $jenisKelamin');
  }
}