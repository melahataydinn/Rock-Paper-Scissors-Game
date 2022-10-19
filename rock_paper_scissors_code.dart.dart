import 'dart:io'; //Dışardan değer girebilmek için kütüphane 
import 'dart:math'; //random seçim yaptırabilmek için kütüphane

enum hamle {tas , kagit , makas} //seçenekler

void main(){
  while (true){ //oyunun birden fazla kez dönmesi icin
    stdout.write('Hamlenizi seçin: Taş için: 1, Kağıt için: 2, Makas için:3, Çıkı için: x');
    print(" Lütfen hamlenizi giriniz: ");
    final giris = stdin.readLineSync();//dışardan değer girilmesini sağlayan kod

    var kisihamle; //hamle girmek için değişken 

   
    
    if(giris == '1'){ //taş hamlesi yapılmışsa
      kisihamle = hamle.tas;
      kisihamle="Taş";
    }
    else if (giris == '2'){ //kağıt hamlesi yapılmışsa
      kisihamle = hamle.kagit;
      kisihamle="Kağıt";
    }
    else if (giris == '3'){ //makas hamlesi yapılmışsa
      kisihamle = hamle.makas;
      kisihamle="Makas";
    }
    else if (giris == 'x'){ //oyunu sonlandırmak için x'e basılmalı
      break;
    }
    else{
      print('Geçerli aralıkta bir hamle girin.');
      continue;
    }
    
     print('Hamleniz: "$kisihamle"');
    
    
    
    final random = Random().nextInt(3);
    final pcHamle = hamle.values[random]; //bilgisayarın rastgele hamle seçmesini sağlar
    
    print('Bilgisayarın hamlesi: "$pcHamle"');

    if(kisihamle == hamle.tas && pcHamle == hamle.makas ||
    kisihamle == hamle.makas && pcHamle == hamle.kagit ||
    kisihamle == hamle.kagit && pcHamle == hamle.tas)
    {
      print('Kazandınız.');
    }
    else if(kisihamle == pcHamle){
      print ('Berabere.');
    }
    else {
      print ('Kaybettiniz.');
    }

  }

}