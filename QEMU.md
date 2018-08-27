# QEMUでRaspbianを起動する

https://qiita.com/Nebutan/items/1cffada81e61a9f2ed58

~~~
MSYS2_ARG_CONV_EXCL='root=' /usr/local/qemu/qemu-system-arm.exe -kernel kernel-qemu-4.9.59-stretch -cpu arm1176 -M versatilepb -hda 2018-06-27-raspbian-stretch.img -dtb versatile-pb.dtb -no-reboot -show-cursor -m 256 -append 'root=/dev/sda2 rootfstype=ext4 rw console=ttyAMA0,115200 console=tty mem=256M highres=off console=ttyS0'
~~~

# ARMのクロスコンパイラ

* ベアメタル: http://gnutoolchains.com/arm-eabi/
* Linux: http://gnutoolchains.com/raspberry/

# HAXMのインストール

https://www.ipentec.com/document/software-install-intel-hardware-accelerated-execution-manager

~~~
-accel hax
~~~

# unzipのインストール

pacman -S unzip

# QEMUにSSHでログイン

http://k-ishik.seesaa.net/article/76968986.html

# scpコマンドでコピー

https://qiita.com/ritukiii/items/c724f09fe66fedf2618b

# winsock

http://www.geekpage.jp/programming/winsock/

# mmap

http://se.hatenablog.jp/entry/2014/11/12/100246

# 画像表示

gpicviewで表示
画像フォーマットはPGM(P5)
