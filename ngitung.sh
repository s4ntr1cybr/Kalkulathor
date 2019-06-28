#!/bin/bash
##program Calculator
##Created By Mr.yM
clear
cd module
python2 masuk.py

blue='\033[34;1m'
green='\033[32;1m'  
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'

penambahan(){
echo " Masukkan angka pertama : "
read p
echo " Masukkan angka kedua : "
read q
Tambah=$(echo "$p + $q" | bc)
echo "Hasil penambahan angka = $Tambah"
sleep 3
}

pengurangan(){
echo " Masukkan angka pertama : "
read p
echo " Masukkan angka kedua : "
read q
Kurang=$(echo "$p - $q" | bc)
echo "Hasil pengurangan angka = $Kurang"
sleep 3
}
perkalian(){
echo " Masukkan angka pertama : "
read p
echo " Masukkan angka kedua : "
read q
Kali=$(echo "$p * $q" | bc)
echo "Hasil perkalian angka = $Kali"
sleep 3
}
pembagian(){
echo " Masukkan angka pertama : "
read p
echo " Masukkan angka kedua : "
read q
Bagi=$(echo "$p /$q" | bc)
echo "Hasil pembagian angka = $Bagi"
sleep 3
}
MENU=1
while [ $MENU ]
do
clear
echo $red   "-------------------------------------"
echo $red   "|    PROGRAM KALKULATOR TERMUX      |"
echo $white "|             By Mr.yM              |"
echo $white "-------------------------------------"
echo "\033[32;1m"
echo        " ________________ "
echo        "(                )"
echo $red   "| 1. Penambahan  |"
echo $yellow"|================|"
echo $green "| 2. Pengurangan |"
echo $blue  "|================|"
echo $cyan  "| 3. Perkalian   |"
echo $purple"|================|"
echo $red   "| 4. Pembagian   |"
echo        "|================|"
echo $white "| 5. Exit        |"
echo        "(________________)"
echo        "Pilihan Menu :  "
read MENU
case $MENU in
1) penambahan
;;
2) pengurangan
;;
3) perkalian
;;
4) pembagian
;;
5) echo "Bye :)"
exit
;;
*) echo "Pilihan yang kamu cari gak ada"
sleep 3
esac
done