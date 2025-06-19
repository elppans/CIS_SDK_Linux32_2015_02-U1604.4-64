# CIS_SDK_Linux32_2015_02-U1604.4-64
Instalação de pacotes para dar suporte a execução para o pacote CIS_SDK 32 Bits no sistema 64 Bits  

- **DEPENDÊNCIA:**  

**DEVE** clonar o repositório [pdv-multilib-u1604.4-64](https://github.com/elppans/pdv-multilib-u1604.4-64) e executar `install.sh` para ativar o suporte a **MULTILIB** primeiro.   

Se quiser instalar tudo na mão, siga os passos a seguir.  
___
# CIS_SDK_Linux32_2015_02 PDV Ubuntu 16.04 Rev. 4 - 64 Bits

- **Extrair e configurar as dependências compactadas:**  
```bash
tar -zxvf CIS_SDK_Linux32_2015_02.tar.gz
```
```bash
sudo cp -av ~/CIS_SDK_Linux32_2015_02/SOs/*.so /usr/lib/i386-linux-gnu
```
```bash
sudo cp -a ~/CIS_SDK_Linux32_2015_02/Demo/CIS_SDK_Lazarus /usr/local/bin/cis_sdk_lazarus
```
```bash
sudo ldconfig
```
## Análise e instalação das dependências do sistema para o pacote CIS_SDK

- **Dependência informada pelo pacote:**  

```bash
sudo apt-get -y install libusb-dev:i386
```
```bash
dpkg -l libusb-dev
```


- **Outras dependências, analisadas e instaladas:**  
>Fontes:  
>https://packages.ubuntu.com/  
>https://launchpad.net/ubuntu/xenial  

- **Biblioteca libX11.so.6:**  
```bash
sudo apt-get -y install libx11-6:i386
```

- **Biblioteca libgdk_pixbuf-2.0.so.0:**  

>**libpcre3 2013-12-03**  
```bash
wget -c http://security.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcre3_8.31-2ubuntu2_i386.deb
```
```bash
wget -c http://security.ubuntu.com/ubuntu/pool/main/p/pcre3/libpcre3_8.31-2ubuntu2_amd64.deb # Downgrade
```
```bash
dpkg -i libpcre3_8.31-2ubuntu2_i386.deb libpcre3_8.31-2ubuntu2_amd64.deb
```

>dpkg -l libpcre3  
>ii  libpcre3:amd64                  1:8.31-2ubuntu2      amd64  
>ii  libpcre3:i386                   1:8.31-2ubuntu2      i386  

- **libselinux1 16-Mar-2016**  
>dpkg -l libselinux1  
>ii  libselinux1:amd64               2.4-3build2  
```bash
wget -c http://cz.archive.ubuntu.com/ubuntu/pool/main/libs/libselinux/libselinux1_2.4-3build2_i386.deb
```
```bash
dpkg -i libselinux1_2.4-3build2_i386.deb
```
>ii  libselinux1:amd64               2.4-3build2  
>ii  libselinux1:i386                2.4-3build2  

- **libglib2.0-0 2016-04-10**  
>dpkg -l libglib2.0-0  
>ii  libglib2.0-0:amd64              2.48.2-0ubuntu4.1  
```bash
wget -c http://security.ubuntu.com/ubuntu/pool/main/g/glib2.0/libglib2.0-0_2.48.0-1ubuntu4_i386.deb
```
```bash
wget -c http://security.ubuntu.com/ubuntu/pool/main/g/glib2.0/libglib2.0-0_2.48.0-1ubuntu4_amd64.deb # Downgrade
```
```bash
dpkg -i libglib2.0-0_2.48.0-1ubuntu4_i386.deb libglib2.0-0_2.48.0-1ubuntu4_amd64.deb
```
>ii  libglib2.0-0:amd64              2.48.0-1ubuntu4  
>ii  libglib2.0-0:i386               2.48.0-1ubuntu4  

- **libgdk-pixbuf2.0-0 2019-03-20**  
>dpkg -l libgdk-pixbuf2.0-0  
>ii  libgdk-pixbuf2.0-0:amd64        2.32.2-1ubuntu1.6  
>https://launchpad.net/ubuntu/xenial/amd64/libgdk-pixbuf2.0-0  
>https://launchpad.net/ubuntu/xenial/i386/libgdk-pixbuf2.0-0  

>Depends on:  
>libc6 (>= 2.14)  
>libgdk-pixbuf2.0-common (= 2.32.2-1ubuntu1.6)  
>libglib2.0-0 (>= 2.37.6)  
>libjpeg8 (>= 8c)  
>libpng12-0 (>= 1.2.13-4)  
>libtiff5 (>= 4.0.3)  
>libx11-6  

>dpkg -l libc6 | grep ^ii  
>dpkg -l libglib2.0-0 | grep ^ii  
>dpkg -l libjpeg8 | grep ^ii  
>dpkg -l libpng12-0 | grep ^ii  
>dpkg -l libtiff5 | grep ^ii   
>dpkg -l libx11-6 | grep ^ii  

>ii  libc6:amd64    2.23-0ubuntu11.3 amd64        GNU C Library: Shared libraries  
>ii  libc6:i386     2.23-0ubuntu11.3 i386         GNU C Library: Shared libraries  
>ii  libglib2.0-0:amd64 2.48.0-1ubuntu4 amd64        GLib library of C routines  
>ii  libglib2.0-0:i386  2.48.0-1ubuntu4 i386         GLib library of C routines  
>ii  libjpeg8:amd64 8c-2ubuntu8  amd64        Independent JPEG Group's JPEG runtime library (dependency package)  
>ii  libpng12-0:amd64 1.2.54-1ubuntu1.1 amd64        PNG library - runtime  
>ii  libtiff5:amd64 4.0.6-1ubuntu0.6 amd64        Tag Image File Format (TIFF) library  
>ii  libx11-6:amd64 2:1.6.3-1ubuntu2.2 amd64        X11 client-side library  
>ii  libx11-6:i386  2:1.6.3-1ubuntu2.2 i386         X11 client-side library  

```bash
wget -c http://launchpadlibrarian.net/415890597/libgdk-pixbuf2.0-0_2.32.2-1ubuntu1.6_i386.deb
```
```bash
wget -c http://launchpadlibrarian.net/415890584/libgdk-pixbuf2.0-0_2.32.2-1ubuntu1.6_amd64.deb
```
```bash
sudo dpkg -i libgdk-pixbuf2.0-0_2.32.2-1ubuntu1.6_i386.deb libgdk-pixbuf2.0-0_2.32.2-1ubuntu1.6_amd64.deb
```
```bash
apt-get -y -f install
```
>ii  libgdk-pixbuf2.0-0:amd64        2.32.2-1ubuntu1.6  
>ii  libgdk-pixbuf2.0-0:i386         2.32.2-1ubuntu1.6  

- **Biblioteca libgtk-x11-2.0.so.0:**

```bash
sudo apt-get install libgtk2.0-0:i386
```

- **Executar o aplicativo:**  

Abra o Terminal (em GUI) execute o comando:  

```bash
cis_sdk_lazarus
```
___
# FIM
