
void main(){
  // void menu(){
  //   print('1.tambahkan buku\n2.pinjam buku\n3.tampilkan buku di perpustakaan dan status');
  // }
  // menu();
  // stdout.write('pilih menu (1/2/3): ');
  // var input = stdin.readLineSync();
  // switch (input) {
  //   case '1':
      
      
  //     break;
  //   default:
  // }

  var book1 = Book();
  book1.title = 'Batu menangis';
  book1.author = 'Andreas';
  book1.year = 2003;
  // book1.isborrowed = true;
  // book1.borrowBook();

  var book2 = Book();
  book2.title = 'matematika kelas IX';
  book2.author = 'Maylika';
  book2.year = 2012;
  book2.borrowBook();

  var book3 = Book();
  book3.title= 'Data mining';
  book3.author = 'Sinta';
  book3.year = 2014;

  var lib1 = Library();
  lib1.addBook(book1);
  lib1.addBook(book2);
  lib1.addBook(book3);
  lib1.displayBook();
  lib1.borrowBook('Data mining');
  lib1.displayBook();
  

}

class Book{
  String? title;
  String? author;
  int? year;
  bool? isborrowed = false;
  borrowBook(){
    if (isborrowed == true) {
      print('buku sudah dipinjam');
    } else{
      isborrowed=true;
      print('buku dipinjam');
    }
    
  }
}

class Library{
  List<Book> books = [];

  addBook(Book inputbook){
    books.add(inputbook);
  }
  displayBook(){
    
    print('==========================================================');
    // for (var i = 0; i < books.length; i++) {
    //   print('${i+1}.${books[i].title} || ${books[i].author}|| ${books[i].year} || ${books[i].isborrowed == true ? 'buku sudah dipinjam' : 'Tersedia'}');
    // }
    for (var element in books) {
      print('${element.title} | ${element.author} | ${element.year} | ${element.isborrowed == true ? 'buku sudah dipinjam' : 'Tersedia'}');
    }
   
  }
  borrowBook(String judul){
    for (var element in books) {
      if(judul == element.title){
        //element.borrowBook();
        element.isborrowed = true;
      }
    }
  }
}

