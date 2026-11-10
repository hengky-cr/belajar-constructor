void main(){
  // var baju1 = Pakaian('Celana', 'Merah');
  // var baju1 = Pakaian('Celana', 'Hijau');
  // var baju1 = Pakaian(inputwarna: 'Biru', inputjenis: 'Celana'); //CTRL + Spasi untuk munculkan
  var baju1 = Pakaian(jenis: 'Celana', warna: 'Biru'); //CTRL + spasi
  baju1.cetak();
}

class Pakaian{
  String? jenis;
  String? warna;

  ////1. positional indirect argumen
  // Pakaian(String inputJenis, String inputWarna){
  //   this.jenis = inputJenis;
  //   this.warna = inputWarna;
  // }

  // //2.postional direct argumen
  // Pakaian(this.jenis,this.warna);

  // //3. indirect named argumen
  // Pakaian({String? inputjenis, String? inputwarna}){
  //   this.jenis = inputjenis;
  //   this.warna = inputwarna;
  // }

  //4. direct named argumen
  Pakaian({this.jenis,this.warna});

  cetak(){
    print('pakaian ini adalah $jenis');
    print('pakaian ini warna $warna');
  }
}