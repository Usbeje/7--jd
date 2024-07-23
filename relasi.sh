#!/bin/bash

# Logo ASCII
echo -e "
█████████╗ ██████╗  ██████╗ ██╗     ███████╗
╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝
   ██║   ██║   ██║██║   ██║██║     ███████╗
   ██║   ██║   ██║██║   ██║██║     ╚════██║
   ██║   ╚██████╔╝╚██████╔╝███████╗███████║
   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝

by Hilal (Hexon_xploitz×Gabutc_exploitz)"

# Menu
echo "Pilih opsi:"
echo "1. jalankan Tools"

read -p "Masukkan pilihan (1): " pilihan

case $pilihan in
   1)
    # Menjalankan berkas chatgpt.py
    if [ -f "relasi.sh" ]; then
      # Menggunakan ssh untuk menampilkan hasil di Termux dari Gitpod
      echo "Menjalankan chatgpt.py di Gitpod..."
      ssh 'usbeje-7jd-a25ek69bscb#zh_8CgYgvXvK3uJutp-3JXavYX_Z1569@usbeje-7jd-a25ek69bscb.ssh.ws-us115.gitpod.io' 'python3 /workspace/7--jd/relasi.sh'
    else
      echo "Berkas relasi.sh tidak ditemukan!"
    fi
    ;;
  *)
    echo "Pilihan tidak valid!"
    ;;
esac
