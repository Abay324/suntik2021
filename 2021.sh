#!/bin/bash
#SUNTIK BY OXYGEN
#changelog
# a).fix a bug when you copied

clear
# my reference to make this
#https://devconnected.com/how-to-check-if-file-or-directory-exists-in-bash/#
#https://stackoverflow.com/questions/17368872/how-to-move-or-copy-files-listed-by-find-command-in-unix // not working
#https://unix.stackexchange.com/questions/46541/how-can-i-use-bashs-if-test-and-find-commands-together
#https://www.cyberciti.biz/tips/find-out-if-file-exists-with-conditional-expressions.html
#https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php
#https://www.linuxsec.org/2020/04/penggunaan-if-statement-pada-bash.html
#https://stackoverflow.com/questions/5241625/find-and-copy-files
#https://stackoverflow.com/questions/238073/how-to-add-a-progress-bar-to-a-shell-script


# !!!INGAT TIDAK ADA CHEAT YG TIDAK PERNAH KEBANNED!!!
echo "saatnya memasang ulang"
sleep 5
clear
[ -d Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config ]; # mencari folder 
then
     echo "folder ditemukan saat nya dihapus"
     #scrullbar
     echo -ne '=====                   (25%)\r'
     sleep 1
     echo -ne '=========              (40%)\r'
     sleep 1
     echo -ne '=============         (60%)\r'
     sleep 1
     echo -ne '================     (80%)\r'
     rm -rf Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config # menghapusnya
     sleep 1
     echo -ne '==================   (100%)\r'
     echo -ne '\n'
     echo "folder telah terhapus saatnya membuat ulang"
     sleep 3
     clear
     else
     echo "Config pulder tidak ditemukan saatnya bikin ulang"
     sleep 5
     clear


echo "buat folder config dimulai"
sleep 5
clear
[ -d Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config ]; # sama penjelasannya seperti di https://github.com/Ncode2014/PUAuto/blob/fb39c7225e48fba85cef49aa50f52a589ee4532e/config.sh#L47
then
    echo "/Config Ditemukan Sekarang Proses pemasangan config dimulai."
    sleep 2
    clear
    else
    echo "/config tidak ditemukan waktu nya bikin ulang"
    echo -ne '=====                   (25%)\r'
    sleep 1
    echo -ne '=========              (40%)\r'
    sleep 1
    echo -ne '=============         (60%)\r'
    sleep 1
    echo -ne '================     (80%)\r'
    mkdir Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config
    sleep 1
    echo -ne '==================   (100%)\r'
    echo -ne '\n'
    echo "folder telah dibuat"
    sleep 2
    clear


# Saatnya pasang UserGame,Userengine dan lain lain
echo "pemasangan UserGame Dimulai"
sleep 5
clear
[[ $(find Download/. -name '*Game*.ini') ]];
then
    echo "file usergame ditemukan saatnya memasang...."
    echo -ne '=====                   (25%)\r'
    sleep 1
    echo -ne '=========              (40%)\r'
    sleep 1
    echo -ne '=============         (60%)\r'
    sleep 1
    echo -ne '================     (80%)\r'
    find Download/ -name '*Game*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    sleep 1
    echo -ne '==================   (100%)\r'
    echo -ne '\n'
    echo "usergame telah terpasang"
    sleep 3
    clear
    else
    echo "file usergame tidak ditemukan pemasangan gagal"
    sleep 3
    exit


echo "pemasangan userEngine dimulai"
 [[ $(find Download/. -name '*Engine*.ini') ]];
then
    echo "file engine ditemukan saatnya memasang..."
    echo -ne '=====                   (25%)\r'
    sleep 1
    echo -ne '=========              (40%)\r'
    sleep 1
    echo -ne '=============         (60%)\r'
    sleep 1
    echo -ne '================     (80%)\r'
    find Download/ -name '*Engine*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    sleep 1
    echo -ne '==================   (100%)\r'
    echo -ne '\n'
    echo "engine telah terpasang"
    sleep 3
    clear
    echo "pemasangan Engine Selesai"
    sleep 5
    clear
    else
    echo "file userengine tidak ditemukan pemasangan gagal"
    exit


# ini berguna agar kalian tidak terkena banned akan tetapi ini bukanlah peruntukkannya untuk curang atau segala macam ingat resiko ditanggung sendiri 
echo "pemasangan lainnnya dimulai"
sleep 3
clear
[[ $(find Download/. -name '*AntiCheat*.ini') ]];
then
    echo "Pemasangan dimulai"
        echo -ne '=====                   (25%)\r'
        sleep 1
        echo -ne '=======              (40%)\r'
        sleep 1
        echo -ne '=========         (60%)\r'
        find Download/ -name '*AntiCheat*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find Download/ -name '*Server*.json' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find Download/ -name '*UserUAE*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        sleep 1
        echo -ne '===========     (80%)\r'
        sleep 1
        echo -ne '=============   (100%)\r'
        echo -ne '\n'
        find Download/ -name '*Suppression*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        find Download/ -name '*AntiCheat*.json' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
        echo "pemasangan selesai"
        sleep 5
        clear
    else
    echo "file tidak ditemukan pemasangan gagal"
    sleep 5
    clear
    echo "lanjut ke proses selanjutnya"
    sleep 3
    clear


# Pasang Scalability
echo "pemasangan userScalability dimulai"
[[ $(find Download/. -name '*Scalability*.ini') ]]; 
then
    echo "file Scalability ditemukan saatnya memasang..."
    echo -ne '=====                   (25%)\r'
    sleep 1
    echo -ne '=========              (40%)\r'
    sleep 1
    echo -ne '=============         (60%)\r'
    sleep 1
    echo -ne '================     (80%)\r'
    find Download/ -name '*Scalability*.ini' -exec cp "{}" Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Config/  \;
    sleep 1
    echo -ne '==================   (100%)\r'
    echo -ne '\n'
    echo "Scalability telah terpasang"
    sleep 5
    echo "pemasangan Scalability Selesai"
    sleep 3
    clear
    else
    echo "file scalability tidak ditemukan pemasangan scalability gagal"
    sleep 5
    clear
    echo "..... anu"
    clear